import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            left: size.width * 0.05,
            right: size.width * 0.05),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome home',
                style: TextStyle(
                    fontSize: size.height * 0.04, fontWeight: FontWeight.w900),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Color(0xff374957),
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: size.height * 0.02,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
