import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends StatefulWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const HomeView());
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _page = 0;
  final appBar = UIConstants.appBar();

  void onPageChange(int index) {
    setState(() {
      _page = index;
    });
  }

  onCreateTweet() {
    Navigator.push(context, CreateTweetScreen.route());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: IndexedStack(
        index: _page,
        children: UIConstants.bottomNavigationTabBarPages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onCreateTweet,
        child: const Icon(
          Icons.add, 
          color: Pallete.whiteColor, 
          size: 28,),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _page,
        onTap: onPageChange,
        backgroundColor: Pallete.backgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
             _page == 0? AssetsConstants.homeOutlinedIcon 
             : AssetsConstants.homeOutlinedIcon,
              // ignore: deprecated_member_use
              color: Pallete.whiteColor,
              ),
              ),
              BottomNavigationBarItem(
              icon: SvgPicture.asset(
              _page == 1? AssetsConstants.searchIcon
              : AssetsConstants.searchIcon,
              // ignore: deprecated_member_use
              color: Pallete.whiteColor,
              ),
              ),
              BottomNavigationBarItem(
              icon: SvgPicture.asset(
              _page == 2? AssetsConstants.notifOutlinedIcon
              : AssetsConstants.notifFilledIcon,
              // ignore: deprecated_member_use
              color: Pallete.whiteColor,
              ),
              ),

        ]
      ),
    );
  }
}