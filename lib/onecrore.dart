import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant.dart';

class Onecrore extends StatefulWidget {
  const Onecrore({super.key});

  @override
  State<Onecrore> createState() => _OnecroreState();
}

class _OnecroreState extends State<Onecrore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/image/kbc.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "🎉",
                    style: TextStyle(fontSize: 50),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Congratulations",
                    style: TextStyle(fontSize: 30, color: Colors.amber
                        // color: Color(0xFFF2AA4CFF),
                        ),
                  ),
                  Text(
                    "You Won 1 Crore",
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      child: winlose("Play Again"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
