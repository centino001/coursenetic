import 'package:coursenetic/src/features/homepages/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:coursenetic/src/features/onboarding/presentation/pages/splash.dart';
import 'package:coursenetic/src/features/onboarding/presentation/pages/onboarding.dart';
import 'package:coursenetic/src/features/auth/presentation/pages/login.dart';
import 'package:coursenetic/src/features/auth/presentation/pages/register.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/onboarding': (context) => const Onboarding(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/homepage': (context) => const homePage(),
      },
    ));
