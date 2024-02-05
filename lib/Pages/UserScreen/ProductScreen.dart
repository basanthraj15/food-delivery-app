import'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
      
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(height: 200,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 0.5),
              ),
            ],
            borderRadius:BorderRadius.circular(10),
            
            ),
            child:Column(children: [
              Image(height:60,
              image: AssetImage('assets/biriyani.jpg'),
              ),
              Text('Biriyani',style: TextStyle(
                fontFamily: ('font'),
                fontSize: 20,
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 6),
                  Text('15 mins'),
                  const  SizedBox(width: 6),
                  Text('5Km'),
                  
                  ]
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('\Rs180',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                FloatingActionButton.small(child:
                  const Icon(Icons.add,size: 20,color:  Colors.black),
                 backgroundColor:Color.fromRGBO(248, 198, 33, 1),
                 onPressed: (){},
      
                ),
                ],
              ),
            ],),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(height: 200,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 0.5),
              ),
            ],
            borderRadius:BorderRadius.circular(10),
            
            ),
            child:Column(children: [
              Image(height:60,
              image: AssetImage('assets/pizza.png'),
              ),
              Text('Pizza',style: TextStyle(
                fontFamily: ('font'),
                fontSize: 20,
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 6),
                  Text('30 mins'),
                  const  SizedBox(width: 6),
                  Text('10Km'),
                  
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('\Rs390',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                FloatingActionButton.small(child:
                  const Icon(Icons.add,size: 20,color:  Colors.black),
                 backgroundColor:Color.fromRGBO(248, 198, 33, 1),
                 onPressed: (){},
      
                ),
                ],
              ),
            ],),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(height: 200,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 0.5),
              ),
            ],
            borderRadius:BorderRadius.circular(10),
            
            ),
            child:Column(children: [
              Image(height:60,
              image: AssetImage('assets/biriyani.jpg'),
              ),
              Text('Biriyani',style: TextStyle(
                fontFamily: ('font'),
                fontSize: 20,
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 6),
                  Text('15 mins'),
                  const  SizedBox(width: 6),
                  Text('5Km'),
                  
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('\Rs180',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                FloatingActionButton.small(child:
                 const Icon(Icons.add,size: 20,color:  Colors.black),
                 backgroundColor:Color.fromRGBO(248, 198, 33, 1),
                 onPressed: (){},
      
                ),
                ],
              ),
            ],),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(height: 200,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 0.5),
              ),
            ],
            borderRadius:BorderRadius.circular(10),
            
            ),
            child:Column(children: [
              Image(height:60,
              image: AssetImage('assets/biriyani.jpg'),
              ),
              Text('Biriyani',style: TextStyle(
                fontFamily: ('font'),
                fontSize: 20,
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 6),
                  Text('15 mins'),
                  const  SizedBox(width: 6),
                  Text('5Km'),
                  
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('\Rs180',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                FloatingActionButton.small(
                  
                  child:
                 const Icon(Icons.add,size: 20,color:  Colors.black),
                 backgroundColor:Color.fromRGBO(248, 198, 33, 1),
                 onPressed: (){},
      
                ),
                ],
              ),
            ],),
            ),
          ),

        ],
      
      ),
    ));
  }
}