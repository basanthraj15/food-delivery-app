
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Food Delivery",
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
         alignment: Alignment.center,
         width: 37,
         child: IconButton(
            onPressed: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>NavBar()),
              ); */
            },
            icon: Icon(Icons.menu, size: 30,color: Colors.black,)),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        )),
        actions: [
          Container(
         alignment: Alignment.center,
         child: IconButton(
            onPressed: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>NavBar()),
              ); */
            },
            icon: Icon(Icons.notifications_active, size: 25,color: Colors.black,)),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        )),
        ],
      ) ,
  
             );
  }
}

