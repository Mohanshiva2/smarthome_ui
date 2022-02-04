import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:smarthome_ui/Screens/farming/gate_valve/gate_valve_1.dart';
import 'package:smarthome_ui/Screens/farming/gate_valve/gate_valve_2.dart';
import 'package:smarthome_ui/Screens/farming/gate_valve/gate_valve_3.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NewContainer {
  final String text;
   bool value = false;


  NewContainer(this.text);
}

class GateValve extends StatefulWidget {
  const GateValve({Key? key}) : super(key: key);

  @override
  _GateValveState createState() => _GateValveState();
}

class _GateValveState extends State<GateValve> {
  final bool values = false;

  List<ItemLists> items = [
    ItemLists(
      title: 'Gate Valve 1',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 2',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 3',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 4',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 4',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 5',
      favorite: false,
    ),
    ItemLists(
      title: 'Gate Valve 5',
      favorite: false,
    ),
  ];

  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gate Valves",
                        style: TextStyle(
                            fontSize: size.height * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          height: size.height * 0.6,
                          width: size.width * 1,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  height: size.height * 0.06,
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
                                  child: Center(
                                    child: ListTile(
                                      title: Text('${items[index].title}'),
                                      trailing: ToggleSwitch(
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
                                        onToggle: (bool) {
                                          isToggled = true;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          // SingleChildScrollView(
                          //   child: Column(
                          //     children: [
                          //       SizedBox(height: size.height*0.04,),
                          //       GestureDetector(
                          //         onTap: () {
                          //           setState(() {
                          //             setState(() {
                          //               Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                     builder: (context) =>
                          //                     const GateValve1()),
                          //               );
                          //             });
                          //           });
                          //         },
                          //         child: Container(
                          //           padding: EdgeInsets.all(15),
                          //           height: size.height * 0.07,
                          //           width: size.width * 0.8,
                          //           decoration: BoxDecoration(
                          //             color: Color(0xffECF0F3),
                          //             borderRadius: BorderRadius.circular(20),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                 color: Colors.black12,
                          //                 offset: Offset(8.0, 8.0),
                          //                 blurRadius: 9.0,
                          //                 spreadRadius: 1,
                          //               ),
                          //               BoxShadow(
                          //                 color: Colors.white,
                          //                 offset: Offset(-4.0, -4.0),
                          //                 blurRadius: 7.0,
                          //                 spreadRadius: 1.0,
                          //               ),
                          //             ],
                          //           ),
                          //           child: Row(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text(
                          //                 "Gate Valve 1",
                          //                 style: TextStyle(
                          //                     fontSize: size.height * 0.023,
                          //                     fontWeight: FontWeight.w600),
                          //               ),
                          //               ToggleSwitch(
                          //                 totalSwitches: 2,
                          //                 minHeight: size.height * 0.2,
                          //                 minWidth: 30,
                          //                 cornerRadius: 9,
                          //                 activeBgColor: [Color(0xff374957)],
                          //                 activeFgColor: Colors.white,
                          //                 inactiveFgColor: Colors.white,
                          //                 inactiveBgColor: Colors.white,
                          //                 borderColor: [Colors.black12],
                          //                 borderWidth: 1,
                          //                 onToggle: null,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: size.height * 0.05,
                          //       ),
                          //       GestureDetector(
                          //         onTap: (){
                          //             setState(() {
                          //               Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                     builder: (context) =>
                          //                     const GateValve2()),
                          //               );
                          //           });
                          //         },
                          //         child: Container(
                          //           padding: EdgeInsets.all(15),
                          //           height: size.height * 0.07,
                          //           width: size.width * 0.8,
                          //           decoration: BoxDecoration(
                          //             color: Color(0xffECF0F3),
                          //             borderRadius: BorderRadius.circular(20),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                 color: Colors.black12,
                          //                 offset: Offset(8.0, 8.0),
                          //                 blurRadius: 9.0,
                          //                 spreadRadius: 1,
                          //               ),
                          //               BoxShadow(
                          //                 color: Colors.white,
                          //                 offset: Offset(-4.0, -4.0),
                          //                 blurRadius: 7.0,
                          //                 spreadRadius: 1.0,
                          //               ),
                          //             ],
                          //           ),
                          //           child: Row(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text(
                          //                 "Gate Valve 2",
                          //                 style: TextStyle(
                          //                     fontSize: size.height * 0.023,
                          //                     fontWeight: FontWeight.w600),
                          //               ),
                          //               ToggleSwitch(
                          //                 totalSwitches: 2,
                          //                 minHeight: size.height * 0.2,
                          //                 minWidth: 30,
                          //                 cornerRadius: 9,
                          //                 activeBgColor: [Color(0xff374957)],
                          //                 activeFgColor: Colors.white,
                          //                 inactiveFgColor: Colors.white,
                          //                 inactiveBgColor: Colors.white,
                          //                 borderColor: [Colors.black12],
                          //                 borderWidth: 1,
                          //                 onToggle: null,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: size.height * 0.05,
                          //       ),
                          //       GestureDetector(
                          //         onTap: (){
                          //           setState(() {
                          //             Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                   const GateValve3()),
                          //             );
                          //           });
                          //         },
                          //         child: Container(
                          //           padding: EdgeInsets.all(15),
                          //           height: size.height * 0.07,
                          //           width: size.width * 0.8,
                          //           decoration: BoxDecoration(
                          //             color: Color(0xffECF0F3),
                          //             borderRadius: BorderRadius.circular(20),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                 color: Colors.black12,
                          //                 offset: Offset(8.0, 8.0),
                          //                 blurRadius: 9.0,
                          //                 spreadRadius: 1,
                          //               ),
                          //               BoxShadow(
                          //                 color: Colors.white,
                          //                 offset: Offset(-4.0, -4.0),
                          //                 blurRadius: 7.0,
                          //                 spreadRadius: 1.0,
                          //               ),
                          //             ],
                          //           ),
                          //           child: Row(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text(
                          //                 "Gate Valve 3",
                          //                 style: TextStyle(
                          //                     fontSize: size.height * 0.023,
                          //                     fontWeight: FontWeight.w600),
                          //               ),
                          //               ToggleSwitch(
                          //                 totalSwitches: 2,
                          //                 minHeight: size.height * 0.2,
                          //                 minWidth: 30,
                          //                 cornerRadius: 9,
                          //                 activeBgColor: [Color(0xff374957)],
                          //                 activeFgColor: Colors.white,
                          //                 inactiveFgColor: Colors.white,
                          //                 inactiveBgColor: Colors.white,
                          //                 borderColor: [Colors.black12],
                          //                 borderWidth: 1,
                          //                 onToggle: null,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: size.height * 0.05,
                          //       ),
                          //       GestureDetector(
                          //         onTap: (){
                          //           setState(() {
                          //           });
                          //         },
                          //         child: Container(
                          //           padding: EdgeInsets.all(15),
                          //           height: size.height * 0.07,
                          //           width: size.width * 0.8,
                          //           decoration: BoxDecoration(
                          //             color: Color(0xffECF0F3),
                          //             borderRadius: BorderRadius.circular(20),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                 color: Colors.black12,
                          //                 offset: Offset(8.0, 8.0),
                          //                 blurRadius: 9.0,
                          //                 spreadRadius: 1,
                          //               ),
                          //               BoxShadow(
                          //                 color: Colors.white,
                          //                 offset: Offset(-4.0, -4.0),
                          //                 blurRadius: 7.0,
                          //                 spreadRadius: 1.0,
                          //               ),
                          //             ],
                          //           ),
                          //           child: Row(
                          //             mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text(
                          //                 "Gate Valve 4",
                          //                 style: TextStyle(
                          //                     fontSize: size.height * 0.023,
                          //                     fontWeight: FontWeight.w600),
                          //               ),
                          //               ToggleSwitch(
                          //                 totalSwitches: 2,
                          //                 minHeight: size.height * 0.2,
                          //                 minWidth: 30,
                          //                 cornerRadius: 9,
                          //                 activeBgColor: [Color(0xff374957)],
                          //                 activeFgColor: Colors.white,
                          //                 inactiveFgColor: Colors.white,
                          //                 inactiveBgColor: Colors.white,
                          //                 borderColor: [Colors.black12],
                          //                 borderWidth: 1,
                          //                 onToggle: null,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: size.height * 0.05,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Center(
                        child: Container(
                          width: size.width * 0.6,
                          decoration: BoxDecoration(
                            color: Color(0xffECF0F3),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.transparent),
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
                          child: ConfirmationSlider(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemLists {
  String title;

  bool favorite;

  ItemLists({required this.title, required this.favorite});
}
