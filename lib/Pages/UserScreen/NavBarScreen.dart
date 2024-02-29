import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/user_controller.dart';
import 'package:food_delivery/Pages/MainScreens/HomePage.dart';
import 'package:food_delivery/Pages/MainScreens/LoginScreen.dart';
import 'package:food_delivery/Pages/UserScreen/NotificationScreen.dart';
import 'package:food_delivery/Pages/UserScreen/PaymentScreen.dart';
import 'package:food_delivery/Pages/UserScreen/PaymentoptionScreen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  get currentAccountPicture => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName:Text(''),
                  
              accountEmail: Text(UserController.user?.displayName ?? ''),
              currentAccountPicture: CircleAvatar(
                foregroundImage:
                    NetworkImage(UserController.user?.photoURL ?? '' ,scale: 1.0),
                    
                /* child: ClipOval(
                  child: Image.asset(
                    'assets/User.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ), */
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 198, 33, 1),
                /* image: DecorationImage(
                  image: AssetImage(
                    'assets/User.jpg',
                  ),
                  fit: BoxFit.cover,
                ), */
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user_rounded),
              title: Text('User Profile'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () => 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              ),
              trailing: ClipOval(
                child: Container(
                    color: Colors.red,
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () =>
                  null, /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              ), */
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
                leading: Icon(Icons.download),
                title: Text('Download App'),
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentOptionScreen()),
                  );
                }),
            Divider(),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () async {
                  await UserController.signOut();
                  
                  Navigator.of(
                    context).pushReplacement
                    (MaterialPageRoute(builder: (context) => LoginScreen()),
                   );
                
                }),
          ],
        ),
      ),
    );
  }
}
/* } */