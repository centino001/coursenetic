// ignore_for_file: camel_case_types


import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/search.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Header(),
            SizedBox(
              height: 16,
            ),
            Search(),
          ],
        ),
        
        
        ),
    );
  }
}
