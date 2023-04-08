import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant.dart';

class Kbc extends StatefulWidget {
  const Kbc({super.key});

  @override
  State<Kbc> createState() => _KbcState();
}

class _KbcState extends State<Kbc> {
  int point = 0;
  int i = 0;
  int winint = 0;
  List question = [
    "The International Literacy Day observed on",
    "The language of Lakshadweep. a Union \n                Territory  of India, is",
    "In which group of places the Kumbha Mela \n          is held every twelve years?",
    "Bahubali festival is related to",
    "Which day is observed as the World \n                    Standards Day?",
    "Which of the following was the theme of \nthe World Red Cross and Red Crescent Day?",
    "September 27 is celebrated every year as",
    "Who is the author of 'Manas Ka-Hans' ?",
    "The death anniversary of which of the \nfollowing leaders is observed as Martyrs' Day?",
    "Who is the author of the epic Meghdoot",
  ];
  List answer = [
    "Sep 8",
    "Malayalam",
    "Prayag. Haridwar, Ujjain,. Nasik",
    "Jainism",
    "Oct 14",
    "Dignity for all - focus on Children'",
    "World Tourism Day",
    "Amrit Lal Nagar",
    "Mahatma Gandhi",
    "Kalidas"
  ];

  List alist = [
    "Sep 8",
    "Tamil",
    "Ujjain. Purl; Prayag. Haridwar",
    "Islam",
    "June 26",
    "'Dignity for all - focus on women'",
    "Teachers' Day",
    "Khushwant Singh",
    "Smt. Indira Gandhi",
    "Vishakadatta"
  ];
  List blist = [
    "Nov 28",
    "Hindi",
    "Prayag. Haridwar, Ujjain,. Nasik",
    "Hinduism",
    "Oct 14",
    "Dignity for all - focus on Children'",
    "National Integration Day",
    "Prem Chand",
    "PI. Jawaharlal Nehru",
    "Valmiki"
  ];
  List clist = [
    "May 2",
    "Malayalam",
    "Rameshwaram. Purl, Badrinath",
    "Buddhism",
    "Nov 15",
    "Focus on health for all",
    "World Tourism Day",
    "Jayashankar Prasad",
    "Mahatma Gandhi",
    "Banabhatta"
  ];
  List dlist = [
    "Sep 22",
    "Telugu",
    "Chittakoot, Ujjain, Prayag",
    "Jainism",
    "Dec 2",
    "Nourishment for all-focus on'",
    "International Literacy Day",
    "Amrit Lal Nagar",
    "Lal Bahadur Shastri",
    "Kalidas"
  ];
  List win = [
    "10,000",
    "50,000",
    "70,000",
    "1,00,000",
    "1,50,000",
    "5,00,000",
    "20,00,000",
    "50,00,000",
    "75,00,000",
    "1,00,00,000"
  ];
  List user_answer = [];
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
                  decoration:
                      new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          "${question[i]}",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Color.fromARGB(255, 45, 123, 188),
                            Colors.black
                          ],
                          radius: 2.2,
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
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user_answer.add('${alist[i]}');
                        if (user_answer[i] == answer[i]) {
                          Navigator.pushNamed(context, 'win',
                              arguments: win[i]);

                          // print(point);
                        } else {
                          Navigator.pushNamed(context, 'lose');
                        }
                      });
                      if (i == 9) {
                        Navigator.pushNamed(context, 'crore');
                      }

                      if (i < 9) {
                        // i++;
                        setState(() {
                          i++;
                        });
                      }
                    },
                    child: option('A', '${alist[i]}'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user_answer.add('${blist[i]}');
                        if (user_answer[i] == answer[i]) {
                          Navigator.pushNamed(context, 'win',
                              arguments: win[i]);
                          // print(point);
                        } else {
                          Navigator.pushNamed(context, 'lose');
                        }
                      });
                      if (i == 9) {
                        Navigator.pushNamed(context, 'crore');
                      }

                      if (i < 9) {
                        // i++;
                        setState(() {
                          i++;
                        });
                      }
                    },
                    child: option('B', '${blist[i]}'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user_answer.add('${clist[i]}');
                        if (user_answer[i] == answer[i]) {
                          Navigator.pushNamed(context, 'win',
                              arguments: win[i]);
                          // print(point);
                        } else {
                          Navigator.pushNamed(context, 'lose');
                        }
                      });
                      if (i == 9) {
                        Navigator.pushNamed(context, 'crore');
                      }

                      if (i < 9) {
                        // i++;
                        setState(() {
                          i++;
                        });
                      }
                    },
                    child: option('C', '${clist[i]}'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        user_answer.add('${dlist[i]}');
                        if (user_answer[i] == answer[i]) {
                          Navigator.pushNamed(context, 'win',
                              arguments: win[i]);
                          // print(point);
                        } else {
                          Navigator.pushNamed(context, 'lose');
                        }
                      });
                      if (i == 9) {
                        Navigator.pushNamed(context, 'crore');
                        // result();
                      }
                      if (i < 9) {
                        // i++;
                        setState(() {
                          i++;
                        });
                      }
                    },
                    child: option('D', '${dlist[i]}'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget result() {
  //   // point = 0;
  //   // for (int i = 0; i < answer.length; i++) {
  //   //   if (user_answer[i] == answer[i]) {
  //   //     point++;
  //   //   }
  //   // }

  //   // ScaffoldMessenger.of(context).showSnackBar(
  //   //   SnackBar(
  //   //     content: Text("$point/10"),
  //   //   ),
  //   // );
  // }
}
