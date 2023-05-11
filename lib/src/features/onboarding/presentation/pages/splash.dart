import 'package:coursenetic/src/features/onboarding/presentation/pages/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (ctx) => const Onboarding()));
    });
    return  Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
             Image(image: AssetImage("assets/images/Logo.png"),
            width: 150.73,
            height: 106,
            ),
             SizedBox(
              height: 50,
            ),
          ],
        )
        ),
    );
  }
}


// void main() {
//   runApp(const App());
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       theme: ThemeData(brightness: Brightness.light),
//       darkTheme: ThemeData(brightness: Brightness.dark),
//       themeMode: ThemeMode.system,
//      home:  const AppSplash() ,
//     );
//   }
// }

// class AppSplash extends StatelessWidget {
//   const AppSplash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  const Scaffold(
//       body: Center(
//         child: Image(image: AssetImage('assets/logos/logo.png')),
//       ),
//     );
//   }
// }
