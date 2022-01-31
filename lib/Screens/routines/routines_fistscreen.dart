import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome_ui/Screens/routines/routines_second_secreen.dart';
import 'package:toggle_switch/toggle_switch.dart';


class Routines extends StatefulWidget {
  const Routines({Key? key}) : super(key: key);

  @override
  _RoutinesState createState() => _RoutinesState();
}

class _RoutinesState extends State<Routines> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.03,
                    ),
                    child: Text(
                      "Routines",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Create new routines to do multiple works at once and \nschedule them to do daily',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RoutinesSecondScreen()),
                        );
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff374957),
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: size.height * 0.03,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent routines',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.6,
                    width: size.width * 0.9,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I'm out",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I'm in",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Movie time",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I'm out",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I'm out",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: size.height * 0.08,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffECF0F3),
                              borderRadius: BorderRadius.circular(20),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I'm out",
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.w600),
                                ),
                                ToggleSwitch(
                                  totalSwitches: 2,
                                  minHeight: size.height * 0.2,
                                  minWidth: 30,
                                  cornerRadius: 9,
                                  activeBgColor: [Color(0xff374957)],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  inactiveBgColor: Colors.white,
                                  borderColor: [Colors.black12],
                                  borderWidth: 1,
                                  onToggle: null,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                        ],
                      ),
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
