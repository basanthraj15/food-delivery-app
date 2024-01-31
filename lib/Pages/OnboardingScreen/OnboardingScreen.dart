import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/HomePage.dart';
import 'package:food_delivery/Pages/LoginScreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int selectPage = 0;
  PageController controller = PageController();
  List pageArr = [
    {
      "title": "Find Food You Love",
      "subtitle":
          "Discover the best foods from over 1,000\nrestraunts and fast delivery at your\ndoorstep",
      "image": "assets/on_boarding_1.png",
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Fast delivery to your Home, Office\n wherever you are",
      "image": "assets/onboarding_4.png",
    },
    {
      "title": "Live Tracking",
      "subtitle":
          "Real time tracking of your food on the app \nonce you placed the order",
      "image": "assets/on_boarding_3.png",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: ((context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: media.width,
                      height: media.width,
                      alignment: Alignment.center,
                      child: Image.asset(pObj["image"].toString(),
                          width: media.width * 0.65, fit: BoxFit.contain),
                    ),
                    SizedBox(height: media.width * 0.1),
                    Text(pObj["title"].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w800)),
                    SizedBox(height: media.width * 0.1),
                    Text(pObj["subtitle"].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: media.width * 0.1),
                  ],
                );
              })),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 198, 33, 1),
                        borderRadius: BorderRadius.circular(4)),
                  );
                }).toList(),
              ),
              SizedBox(height: media.width * 1.6),
              /* Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: */
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  if (selectPage >= 2) {
                    //homee
                  } else {
                    //next page go
                    setState(() {
                      selectPage = selectPage + 1;
                      controller.animateToPage(selectPage,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInBack);
                    });
                  }
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 50),
                  backgroundColor: Color.fromRGBO(248, 198, 33, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              /* ), */
              SizedBox(height: media.width * 0.1),
            ],
          ),
        ],
      ),
    );
  }
}
