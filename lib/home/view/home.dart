import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:mtest/Chat/view/chathome.dart';
import 'package:mtest/ChatPage/chatpg.dart';
import 'package:mtest/ChatPage/view/chatfinal.dart';
import 'package:mtest/profile/view/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              child: Center(
                child: ChatHome(),
              ),
            ),
            Container(
              child: Center(child: ChatFinal()),
            ),
            Container(
              child: Center(
                child: Profile(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color.fromARGB(197, 159, 92, 223),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text(
              'home',
              style: TextStyle(color: Color.fromARGB(213, 81, 33, 126)),
            ),
            icon: const Icon(
              Icons.home,
              color: Color.fromARGB(213, 81, 33, 126),
            ),
          ),
          BottomNavyBarItem(
            title: const Text(
              'messages',
              style: TextStyle(color: Color.fromARGB(213, 81, 33, 126)),
            ),
            icon: const Icon(
              Icons.chat,
              color: Color.fromARGB(213, 81, 33, 126),
            ),
          ),
          BottomNavyBarItem(
            title: const Text(
              'profile view',
              style: TextStyle(color: Color.fromARGB(213, 81, 33, 126)),
            ),
            icon: const Icon(
              Icons.person,
              color: Color.fromARGB(213, 81, 33, 126),
            ),
          ),
        ],
      ),
    );
  }
}
