import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            Center(child: Text('Home Page')),
            Center(child: Text('Orders Page')),
            Center(child: Text('History Page')),
            Center(child: Text('Wallet Page')),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: SafeArea(
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Color.fromRGBO(248, 198, 33, 1),
              tabBackgroundColor: const Color.fromARGB(255, 40, 39, 39),
              gap: 8,
              onTabChange: (index) {
                _pageController.jumpToPage(index);
              },
              padding: EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.bike_scooter_sharp,
                  text: 'Orders',
                ),
                GButton(
                  icon: Icons.history_outlined,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.wallet,
                  text: 'Wallet',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
