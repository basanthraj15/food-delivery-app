import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {
  int simpleIntInput1 = 0;
  int simpleIntInput2 = 0;
   int simpleIntInput3 = 0;
    int simpleIntInput4 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(
                        height: 60,
                        image: AssetImage('assets/biriyani.jpg'),
                      ),
                      Text(
                        'Biriyani',
                        style: TextStyle(
                          fontFamily: ('font'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(width: 6),
                              Text('15 mins'),
                              const SizedBox(width: 6),
                              Text('5Km'),
                            ]),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min, children: [
                        QuantityInput(
                            inputWidth: 5,
                            iconColor: Colors.black,
                            buttonColor: Colors.amber,
                            value: simpleIntInput1,
                            onChanged: (value) => setState(() =>
                                simpleIntInput1 =
                                    int.parse(value.replaceAll(',', '')))),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('$simpleIntInput1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\Rs180',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(
                        height: 60,
                        image: AssetImage('assets/pizza.png'),
                      ),
                      Text(
                        'Pizza',
                        style: TextStyle(
                          fontFamily: ('font'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(width: 6),
                              Text('30 mins'),
                              const SizedBox(width: 6),
                              Text('10Km'),
                            ]),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min, children: [
                        QuantityInput(
                            inputWidth: 5,
                            iconColor: Colors.black,
                            buttonColor: Colors.amber,
                            value: simpleIntInput2,
                            onChanged: (value) => setState(() =>
                                simpleIntInput2 =
                                    int.parse(value.replaceAll(',', '')))),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('$simpleIntInput2',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\Rs390',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(1, 0.5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(
                        height: 60,
                        image: AssetImage('assets/biriyani.jpg'),
                      ),
                      Text(
                        'Biriyani',
                        style: TextStyle(
                          fontFamily: ('font'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(width: 6),
                              Text('15 mins'),
                              const SizedBox(width: 6),
                              Text('5Km'),
                            ]),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min, children: [
                        QuantityInput(
                            inputWidth: 5,
                            iconColor: Colors.black,
                            buttonColor: Colors.amber,
                            value: simpleIntInput3,
                            onChanged: (value) => setState(() =>
                                simpleIntInput3 =
                                    int.parse(value.replaceAll(',', '')))),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('$simpleIntInput3',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\Rs180',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(
                        height: 60,
                        image: AssetImage('assets/biriyani.jpg'),
                      ),
                      Text(
                        'Ghee Rice',
                        style: TextStyle(
                          fontFamily: ('font'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(width: 6),
                              Text('10 mins'),
                              const SizedBox(width: 6),
                              Text('2Km'),
                            ]),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min, children: [
                        QuantityInput(
                            inputWidth: 5,
                            iconColor: Colors.black,
                            buttonColor: Colors.amber,
                            value: simpleIntInput4,
                            onChanged: (value) => setState(() =>
                                simpleIntInput4 =
                                    int.parse(value.replaceAll(',', '')))),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('$simpleIntInput4',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\Rs120',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
