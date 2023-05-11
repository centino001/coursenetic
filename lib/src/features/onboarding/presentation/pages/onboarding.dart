import 'package:coursenetic/src/features/auth/presentation/pages/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  // void initState() {

  //   super.initState();

  //   Future.delayed(const Duration(seconds: 3)).then((value){
  //     Navigator.of(context).pushReplacement(
  //       CupertinoPageRoute(builder: (ctx) => const Register()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   leading: ElevatedButton(
        //     onPressed: () {
        //       Navigator.of(context).pushReplacement(
        //   CupertinoPageRoute(builder: (ctx) => const Register()));
        //     }, child: const Text("Skip"),
        //   ),
        // ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(builder: (ctx) => const Register()));
                },
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: const Text(
                    "Skip",
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Image(
              image: AssetImage("assets/images/onboard.png"),
              width: 430,
              height: 463,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Empower your learning\nexperience",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
