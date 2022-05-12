import 'dart:ui';

import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacementNamed(context,'/main_screen');
  });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //لتدريج اللون
          gradient: LinearGradient(
              begin: Alignment.topCenter, //بداية التدرج
              end: Alignment.bottomCenter, //نهاية التدرج
              colors: [
                Colors.teal.withOpacity(0), //الشفافية
                Colors.teal.withOpacity(0.8),
              ],
              stops: const [
                //عشان احدد بداية التدرج
                0.6, 1
              ])),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Scaffold(
           backgroundColor: Colors.green,
              body: Image.asset(
            'assets/images/launch.jpeg',
                  width:double.infinity,
                height: double.infinity,
          ),

        ),
      ),
    );

  }
}
