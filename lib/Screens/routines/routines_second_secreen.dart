import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutinesSecondScreen extends StatefulWidget {
  const RoutinesSecondScreen({Key? key}) : super(key: key);

  @override
  _RoutinesSecondScreenState createState() => _RoutinesSecondScreenState();
}

class _RoutinesSecondScreenState extends State<RoutinesSecondScreen> {

  bool checkboxval = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            margin: EdgeInsets.only(
              top: size.height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create new Routine',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        'Create new routines to do multiple works at once and \nschedule them to do daily',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: size.height * 0.1,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xffECF0F3),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 1.0,
                          spreadRadius: 0.4,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 7.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Routine name',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Device",
                        style: TextStyle(
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Checkbox(
                                  value: checkboxval,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checkboxval = value!;
                                    });
                                  },
                                  
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
