import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:smarthome_ui/Screens/farming/gate_valve/gate_valve_main.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'motor_screen.dart';

class Farming extends StatefulWidget {
  const Farming({Key? key}) : super(key: key);

  @override
  _FarmingState createState() => _FarmingState();
}

class _FarmingState extends State<Farming> {


  bool values = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.035,
              left: size.width * 0.05,
              right: size.width * 0.05),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Farming',
                        style: TextStyle(
                            fontSize: size.height * 0.05,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.grid_view,
                                    color: Color(0xff374957),
                                    size: size.height * 0.03,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.settings,
                                    color: Color(0xff374957),
                                    size: size.height * 0.03,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  // color: Colors.teal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Devices",
                        style: TextStyle(
                            fontSize: size.height * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      Container(
                        // color: Colors.blue,
                        height: size.height * 0.6,
                        width: size.width * 0.9,
                        child: Stack(
                          alignment: Alignment(0.01, -1.0),
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.04,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MotorScreen()),
                                        );
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      height: size.height * 0.07,
                                      width: size.width * 0.8,
                                      decoration: BoxDecoration(
                                        color: Color(0xffECF0F3),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(8.0, 8.0),
                                            blurRadius: 9.0,
                                            spreadRadius: 1,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Main Motor",
                                            style: TextStyle(
                                                fontSize: size.height * 0.023,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          ToggleSwitch(
                                            totalSwitches: 2,
                                            minHeight: size.height * 0.2,
                                            minWidth: size.width * 0.07,
                                            cornerRadius: 9,
                                            activeBgColor: [Color(0xff374957)],
                                            activeFgColor: Colors.white,
                                            inactiveFgColor: Colors.white,
                                            inactiveBgColor: Colors.white,
                                            borderColor: [Colors.black12],
                                            borderWidth: 1,
                                            onToggle: (bool){

                                          }
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.05,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => GateValve(),
                                          ),
                                        );
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      height: size.height * 0.07,
                                      width: size.width * 0.8,
                                      decoration: BoxDecoration(
                                        color: Color(0xffECF0F3),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(8.0, 8.0),
                                            blurRadius: 9.0,
                                            spreadRadius: 1,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Gate Valves",
                                            style: TextStyle(
                                                fontSize: size.height * 0.023,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          ToggleSwitch(
                                            totalSwitches: 2,
                                            minHeight: size.height * 0.2,
                                            minWidth: size.width * 0.07,
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
                                  ),
                                  SizedBox(
                                    height: size.height * 0.05,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        width: size.width * 0.6,
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF0F3),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: Colors.transparent),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(3.0, 3.0),
                                              blurRadius: 8.0,
                                              spreadRadius: 1,
                                            ),
                                            BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, -5.0),
                                              blurRadius: 7.0,
                                              spreadRadius: 1.0,
                                            ),
                                          ],
                                        ),
                                        child:
                                        ConfirmationSlider(
                                            backgroundShape: BorderRadius.circular(40),
                                            height: size.height * 0.07,
                                            width: size.width*0.6,
                                            text: "Slid to off all",
                                            backgroundColorEnd: Colors.white,
                                            backgroundColor: Colors.white,
                                            shadow: BoxShadow(spreadRadius: -1),
                                            sliderButtonContent: Icon(
                                              Icons.power_settings_new_rounded,
                                              color: Colors.white54,
                                            ),
                                            foregroundColor: Color(0xff374957),
                                            onConfirmation: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
