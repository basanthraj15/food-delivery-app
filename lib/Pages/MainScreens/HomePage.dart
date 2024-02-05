import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/user_controller.dart';
import 'package:food_delivery/Pages/UserScreen/CartScreen.dart';
import 'package:food_delivery/Pages/UserScreen/NavBarScreen.dart';
import 'package:food_delivery/Pages/UserScreen/NotificationScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
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
                color: Color.fromRGBO(248, 198, 33, 1),
                borderRadius: BorderRadius.circular(20))),
        actions: [
          Container(
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart_checkout_sharp,
                  size: 25,
                  color: Colors.black,
                )),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(248, 198, 33, 1),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10, top: 0, bottom: 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Deliver to'),
          Row(
            children: [
              Icon(Icons.location_on, size: 20, color: Colors.black),
              Text(
                'My Home',
                style: TextStyle(fontSize: 15),
              ),
              Icon(Icons.arrow_drop_down, size: 20),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 400,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: Colors.white),
            ),
            child: TextField(
              controller: _searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                hintText: "Search Food, Drinks, etc!!!!",
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 370,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/offer.PNG'), fit: BoxFit.cover),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 85,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(const Radius.circular(50)),
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