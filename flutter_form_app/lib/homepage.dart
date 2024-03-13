import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_app/auth_field.dart';
import 'package:flutter_form_app/myicons.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  bool isPlaying = true;

  void toggleplaying() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  List imageList = [
    {"id": 1, "image_path": 'assets/images/Kun _ Anime_6.jpg'},
    {"id": 2, "image_path": 'assets/images/Kun _ Anime_8.jpg'},
    {"id": 3, "image_path": 'assets/images/Kun _ Anime_2.jpg'},
    {"id": 4, "image_path": 'assets/images/Kun _ Anime_1.jpg'},
    {"id": 5, "image_path": 'assets/images/Kun _ Anime_8.jpg'},
    {"id": 6, "image_path": 'assets/images/Kun _ Anime.jpg'},
    {"id": 7, "image_path": 'assets/images/Kun _ Anime_5.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // int selectedIndex = 0;

    // double baseWidth = 390;
    // double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;

    return Scaffold(
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map((item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                ))
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 0.99,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),

                    Positioned(
                      top: 10,
                      left: 340.0,
                      child: MyPlaying(
                        isPlaying: isPlaying,
                        onTap: toggleplaying,
                      ),
                    ),

                    //ToolBars for the top
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text('write a condolence message here'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 25,
                      ),
                      child: AuthField(
                        controller: emailController,
                        hintText: 'write a condolence message here',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Sign Your Signature'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 25,
                      ),
                      child: AuthField(
                        controller: passwordController,
                        hintText: 'Sign Your Signature',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.gif_box,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(
                              370,
                              70,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
