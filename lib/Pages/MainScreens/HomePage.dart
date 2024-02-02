import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/UserScreen/NavBarScreen.dart';
import 'package:food_delivery/Pages/UserScreen/NotificationScreen.dart';
import 'package:food_delivery/Pages/UserScreen/OrdersScreen.dart';
import 'package:food_delivery/Pages/UserScreen/PaymentScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
/* int _selectedIndex = 0;
void _NavigateBottomBar(int index){
setState(() {
  _selectedIndex = index;
});
}

final List<Widget> _pages =[
  HomePage(),
  OrderScreen(),
  PaymentScreen(),
]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FoodiEE",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(248, 198, 33, 1),
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
            alignment: Alignment.center,
            width: 37,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                )),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(248, 198, 33, 1), borderRadius: BorderRadius.circular(20))),
        actions: [
          Container(
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationScreen()),
                  );
                },
                icon: Icon(
                  Icons.notifications_active,
                  size: 25,
                  color: Colors.black,
                )),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(248, 198, 33, 1), borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      /*  body: _pages[_selectedIndex], */
      /* bottomNavigationBar: BottomNavigationBar( */
      /* currentIndex: _selectedIndex,
         onTap: _NavigateBottomBar,
          */
      /* type: BottomNavigationBarType.fixed, */

/* 
bottomNavigationBar: BottomNavigationBar(


          items:  [
            
        BottomNavigationBarItem(        
          icon: Icon(Icons.home_outlined),
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bike_scooter_sharp),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'Payment',
               
        ),
       
      ], 
           ), */

      bottomNavigationBar: Container(
        height: 85,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Color.fromRGBO(248, 198, 33, 1),
          tabBackgroundColor: const Color.fromARGB(255, 40, 39, 39),
          gap: 8,
          onTabChange: (index) {
            print(index);
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
    );
  }
}
