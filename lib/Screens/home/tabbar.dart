import 'package:clay_containers/clay_containers.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome_ui/Screens/device/device_screen.dart';
import 'package:smarthome_ui/Screens/farming/farming.dart';
import 'package:smarthome_ui/Screens/home/home_screen.dart';
import 'package:smarthome_ui/Screens/routines/routines_fistscreen.dart';

class TabbBar extends StatefulWidget {
  const TabbBar({Key? key}) : super(key: key);

  @override
  _TabbBarState createState() => _TabbBarState();
}

class _TabbBarState extends State<TabbBar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffE5E5E5),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Color(0xffD1D9E6),
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Color(0xffFFFFFF),
              offset: Offset(-0.0, -0.0),
              blurRadius: 0.7,
              spreadRadius: 1.0,
            ),
          ],
        ),
        margin: EdgeInsets.only(
            bottom: size.height * 0.04,
            left: size.width * 0.09,
            right: size.width * 0.09),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: ClayContainer(
            curveType: CurveType.concave,
            depth: 50,
            child: BottomNavigationBar(
              elevation: 1.0,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black87,
              currentIndex: _selectedTab,
              onTap: (index) {
                setState(() {
                  this._selectedTab = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_rounded ), label: 'Devices'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grass ),
                  label: 'Farming',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Routines'),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          renderView(0, HomeScreen()),
          renderView(1, DeviceScreen(),),
          renderView(2, FarmingScreen()),
          renderView(3, RoutinesFirstScreen(),),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
