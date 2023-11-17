import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

int selectPage = 0;
PageController controller= PageController();
 List pageArr =[
  {
  "title":"Find Food You Love",
  "subtitle":"Discover the best foods from over 1,000\nrestraunts and fast delivery at your\ndoorstep",
  "image":"assets/on_boarding_1.png",
 
 },
  {
  "title":"Fast Delivery",
  "subtitle":"Fast delivery to your Home, Office\n wherever you are",
  "image":"assets/onboarding_4.png",
 
 },
  {
  "title":"Live Tracking",
  "subtitle":"Real time tracking of your food on the app \nonce you placed the order",
  "image":"assets/on_boarding_3.png",
 
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
    var media = MediaQuery.of( context).size;
    return Scaffold(
      body:Stack(children: [
        PageView.builder(
          controller: controller,
          itemCount: pageArr.length,
          itemBuilder: ((context, index) {
            var pObj = pageArr[index] as Map? ?? {};
          return Column(
            children: [
              Container(
                width: media.width,
                height: media.height,
                alignment: Alignment.center,
                child: Image.asset(pObj["image"].toString(),width: media.width * 0.65,fit:BoxFit.contain),
              ),
            ],
          );


   } )),
      ],
      ),
    );
  }
}