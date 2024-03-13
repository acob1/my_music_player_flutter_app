import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_slider_app/widgets/MenuSearches.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/Kun _ Anime_6.jpg'},
    {"id": 2, "image_path": 'assets/images/Kun _ Anime_8.jpg'},
    {"id": 3, "image_path": 'assets/images/Kun _ Anime_2.jpg'},
    {"id": 4, "image_path": 'assets/images/Kun _ Anime_1.jpg'},
    {"id": 5, "image_path": 'assets/images/Kun _ Anime_8.jpg'},
    {"id": 6, "image_path": 'assets/images/Kun _ Anime.jpg'},
    {"id": 7, "image_path": 'assets/images/Kun _ Anime_5.jpg'},
  ];
  final List<String> movieTitles = [
    'JACK ',
    'JOHN',
    'MAN',
    'EVANS',
    'CHAS',
    'DIOR',
    'ANTMan'
  ];
  final List<String> movieSubTitle = [
    'RETRIBUTION',
    'PUNISHMENTS',
    'RETRIBUTIVE JUSTICE',
    'JUDGMENTS',
    'COMPENSATION',
    'VENGEANE FOR HIM',
    'COUNTERBLOW'
  ];
  final List<String> moviesSubTitle = [
    'Will jack retrieve his powers?',
    'Will john retrieve his powers?',
    'Will man retrieve his powers? ',
    'Will evans retrieve his powers?',
    'Will chas retrieve his powers?',
    'Will dior retrieve his powers?',
    'Will antman retrieve his powers?'
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List<String> categories = [
      'For You',
      'Fantasy',
      'Superpowers',
      'Drama',
      'Survival'
    ];

    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueAccent,
      //   centerTitle: true,
      //   title: const Text('Slider'),
      // ),

      body: Column(
        children: <Widget>[
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
                    aspectRatio: 0.5,
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
                // rectangle1SCB (60:11)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 436 * fem,
                    height: 862 * fem,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.138, 0.974),
                          end: Alignment(-0.133, -0.984),
                          colors: <Color>[Color(0xff18181a), Color(0x00000000)],
                          stops: <double>[0.434, 0.804],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //ToolBars for the top
              Positioned(
                // textQrw (68:95)
                left: 31 * fem,
                top: 97 * fem,
                child: SizedBox(
                  width: 349 * fem,
                  height: 25 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // foryouKj1 (68:90)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 8 * fem, 0 * fem),
                        child: Text(
                          'For You',
                          style: TextStyle(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4666666667 * ffem / fem,
                            letterSpacing: -0.4079999924 * fem,
                            color: const Color(0xffa19e9e),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupm7ugRn3 (VSLZp2jeodggHmLuTpM7Ug)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 12 * fem, 0 * fem),
                        width: 62 * fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // fantasyxX5 (68:91)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1 * fem),
                              child: Text(
                                'Fantasy',
                                style: TextStyle(
                                  fontSize: 17 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2941176471 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            // Container(
                            //   // rectangle6TCw (68:96)
                            //   width: double.infinity,
                            //   height: 2 * fem,
                            //   decoration: BoxDecoration(
                            //     color: Color(0xffffffff),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        // superpowersCwD (68:92)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        child: Text(
                          'Superpowers',
                          style: TextStyle(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4666666667 * ffem / fem,
                            letterSpacing: -0.4079999924 * fem,
                            color: const Color(0xffa19e9e),
                          ),
                        ),
                      ),
                      Container(
                        // dramauqd (68:93)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        child: Text(
                          'Drama',
                          style: TextStyle(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4666666667 * ffem / fem,
                            letterSpacing: -0.4079999924 * fem,
                            color: const Color(0xffa19e9e),
                          ),
                        ),
                      ),
                      Text(
                        // survivalS4s (68:94)
                        'Survival',
                        style: TextStyle(
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.4666666667 * ffem / fem,
                          letterSpacing: -0.4079999924 * fem,
                          color: const Color(0xffa19e9e),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MenuSearches(fem: fem, ffem: ffem),
              //The Text-Slider
              AspectRatio(
                aspectRatio: 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      movieTitles[currentIndex],
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 0.7333333333 * ffem / fem,
                        letterSpacing: -0.4079999924 * fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      movieSubTitle[currentIndex],
                      style: TextStyle(
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 0.7333333333 * ffem / fem,
                        letterSpacing: -0.4079999924 * fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      moviesSubTitle[currentIndex],
                      style: TextStyle(
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.4666666667 * ffem / fem,
                        letterSpacing: -0.4079999924 * fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   // jacksmN3 (68:99)
              //   left: 86 * fem,
              //   top: 398 * fem,
              //   child: Container(
              //     width: 217 * fem,
              //     height: 76 * fem,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Container(
              //           // jacksH5V (68:97)
              //           margin: EdgeInsets.fromLTRB(
              //               10 * fem, 0 * fem, 0 * fem, 0 * fem),
              //           child: RichText(
              //             text: TextSpan(
              //               style: TextStyle(
              //                 fontSize: 30 * ffem,
              //                 fontWeight: FontWeight.w400,
              //                 height: 0.7333333333 * ffem / fem,
              //                 letterSpacing: -0.4079999924 * fem,
              //                 color: const Color(0xffffffff),
              //               ),
              //               children: [
              //                 TextSpan(
              //                   text: 'JACK’S',
              //                   style: TextStyle(
              //                     fontSize: 30 * ffem,
              //                     fontWeight: FontWeight.w900,
              //                     height: 0.7333333333 * ffem / fem,
              //                     letterSpacing: -0.4079999924 * fem,
              //                     color: const Color(0xffffffff),
              //                   ),
              //                 ),
              //                 TextSpan(
              //                   text: ' ',
              //                   style: TextStyle(
              //                     fontSize: 30 * ffem,
              //                     fontWeight: FontWeight.w400,
              //                     height: 0.7333333333 * ffem / fem,
              //                     letterSpacing: -0.4079999924 * fem,
              //                     color: const Color(0xffffffff),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 5 * fem,
              //         ),
              //         Text(
              //           // retributiontzP (68:98)
              //           'RETRIBUTION',
              //           style: TextStyle(
              //             fontSize: 30 * ffem,
              //             fontWeight: FontWeight.w900,
              //             height: 0.7333333333 * ffem / fem,
              //             letterSpacing: -0.4079999924 * fem,
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 5 * fem,
              //         ),
              //         Text(
              //           // willjackretrievehispowersDmm (70:100)
              //           'Will jack retrieve his powers?  ',
              //           style: TextStyle(
              //             fontSize: 15 * ffem,
              //             fontWeight: FontWeight.w400,
              //             height: 1.4666666667 * ffem / fem,
              //             letterSpacing: -0.4079999924 * fem,
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Positioned(
                // playnowwhm (71:124)
                left: 88 * fem,
                top: 486 * fem,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        6 * fem, 2 * fem, 17 * fem, 1 * fem),
                    width: 95 * fem,
                    height: 25 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffff3156),
                      borderRadius: BorderRadius.circular(5 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorbGX (70:105)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 11 * fem, 1 * fem),
                          width: 7 * fem,
                          height: 11 * fem,
                          child: Image.asset(
                            'assets/images/vector.png',
                            width: 7 * fem,
                            height: 11 * fem,
                          ),
                        ),
                        Text(
                          // playnowic3 (71:110)
                          'Play Now',
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.8333333333 * ffem / fem,
                            letterSpacing: -0.4079999924 * fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // moreinforTM (71:123)
                left: 191 * fem,
                top: 486 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(6 * fem, 2 * fem, 13 * fem, 1 * fem),
                  width: 95 * fem,
                  height: 25 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffffffff)),
                    color: const Color(0xff18181a),
                    borderRadius: BorderRadius.circular(5 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // vectorvCK (70:107)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 9 * fem, 0 * fem),
                        width: 12 * fem,
                        height: 12 * fem,
                        child: Image.asset(
                          'assets/images/vector-yco.png',
                          width: 12 * fem,
                          height: 12 * fem,
                        ),
                      ),
                      Text(
                        // moreinfodsR (71:111)
                        'More Info',
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.8333333333 * ffem / fem,
                          letterSpacing: -0.4079999924 * fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // linemoreeJf (73:132)
                left: 31 * fem,
                top: 588 * fem,
                child: SizedBox(
                  width: 329 * fem,
                  height: 22 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // easternfantasyw2s (71:125)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 208 * fem, 0 * fem),
                        child: Text(
                          'Eastern Fantasy',
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.8333333333 * ffem / fem,
                            letterSpacing: -0.4079999924 * fem,
                            color: const Color(0xffefefef),
                          ),
                        ),
                      ),
                      Text(
                        // more2q1 (71:126)
                        'More',
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.8333333333 * ffem / fem,
                          letterSpacing: -0.4079999924 * fem,
                          color: const Color(0xfff00b4f),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31 * fem,
                top: 635 * fem,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // maskgroupqnT (73:135)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3 * fem),
                            width: 112 * fem,
                            height: 112 * fem,
                            child: Image.asset(
                              'assets/images/mask-group-Ugb.png',
                              width: 112 * fem,
                              height: 112 * fem,
                            ),
                          ),
                          Container(
                            // firstclassorder9o9 (76:140)
                            margin: EdgeInsets.fromLTRB(
                                4 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'First class order',
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.8333333333 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // maskgroupAy9 (73:137)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3 * fem),
                            width: 112 * fem,
                            height: 112 * fem,
                            child: Image.asset(
                              'assets/images/mask-group-twM.png',
                              width: 112 * fem,
                              height: 112 * fem,
                            ),
                          ),
                          Container(
                            // martialuniversehCP (76:141)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 3 * fem, 0 * fem),
                            child: Text(
                              'Martial Universe',
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.8333333333 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // maskgroupVtw (73:139)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3 * fem),
                            width: 112 * fem,
                            height: 112 * fem,
                            child: Image.asset(
                              'assets/images/mask-group.png',
                              width: 112 * fem,
                              height: 112 * fem,
                            ),
                          ),
                          Container(
                            // swallowstardET (76:142)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 8 * fem, 0 * fem),
                            child: Text(
                              'Swallow  Star',
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.8333333333 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // maskgroupAy9 (73:137)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 3 * fem),
                            width: 112 * fem,
                            height: 112 * fem,
                            child: Image.asset(
                              'assets/images/mask-group-twM.png',
                              width: 112 * fem,
                              height: 112 * fem,
                            ),
                          ),
                          Container(
                            // martialuniversehCP (76:141)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 3 * fem, 0 * fem),
                            child: Text(
                              'Martial Universe',
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.8333333333 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
