import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome_ui/Screens/home/home_screen.dart';

import 'Screens/device/device_screen.dart';
import 'Screens/home/tabbar.dart';
import 'Screens/routines/routines_fistscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabbBar(),
    );
  }
}
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CupertinoTabScaffold(
        backgroundColor: Color(0xffECF0F3),
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Device')),
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Farming')),
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Routins')),
            ],
          ),
          tabBuilder: (context, index){
            switch(index){
              case 0:
                return CupertinoTabView(builder: (context){
                  return CupertinoPageScaffold(child: Home(),);
                });

              case 1:
                return CupertinoTabView(builder: (context){
                  return CupertinoPageScaffold(child: Routines(),);
                });

              case 2:
                return CupertinoTabView(builder: (context){
                  return CupertinoPageScaffold(child: Device(),);
                });
              default: return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Home());
              },);

            }
          },
      ),
    );
  }
}
