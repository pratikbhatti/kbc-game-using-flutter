import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget option(String name, String value) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: " ${name} :",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 190, 177, 65),
                ),
              ),
              TextSpan(
                text: " ${value}",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      height: 75,
      width: 375,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color.fromARGB(255, 45, 123, 188), Colors.black],
          radius: 2.3,
        ),
        border: Border.all(
          color: Color.fromARGB(255, 190, 177, 65),
          width: 4,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
  );
}

Widget winlose(String data) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Text(
          "${data}",
          style: TextStyle(color: Colors.amber, fontSize: 22),
        ),
      ),
      height: 85,
      width: 240,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color.fromARGB(255, 45, 123, 188), Colors.black],
          radius: 1.3,
        ),
        border: Border.all(
          color: Color.fromARGB(255, 190, 177, 65),
          width: 4,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
  );
}
