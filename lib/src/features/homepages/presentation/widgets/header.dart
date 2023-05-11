import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/avatar.png",
            ),
            backgroundColor: Colors.transparent,
            radius: 30.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "Ali James",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff40409E),
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Color(0xff40409e),
        ),
        Padding(
          padding: EdgeInsets.only(right: 19.0, left: 140),
          child: Icon(CupertinoIcons.bell),
        ),
      ],
    );
  }
}
