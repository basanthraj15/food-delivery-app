import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children:[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      image:AssetImage('assets/burger.png')),
                              ),
                  )
                ),
              ),
              Text('Burger')
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      
                      image:AssetImage('assets/pizza.png')),
                              ),
                  )
                ),
              ),
              Text('Pizza')
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      image:AssetImage('assets/icecream.png')),
                              ),
                  )
                ),
              ),
              Text('Icecream')
            ],
          ),

Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      image:AssetImage('assets/coffee.png')),
                              ),
                  )
                ),
              ),
              Text('Drinks')
            ],
          ),

Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      image:AssetImage('assets/cake.png')),
                              ),
                  )
                ),
              ),
              Text('Cake')
            ],
          ),

Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left: 5),
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                    child: Image(
                      height: 35,
                      image:AssetImage('assets/biriyani.jpg')),
                              ),
                  )
                ),
              ),
              Text('Biriyani')
            ],
          ),



        ],
      ),
    );
  }
}