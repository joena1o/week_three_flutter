import 'package:flutter/material.dart';
import 'dart:async';
import 'package:week_three/home_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //Timer from the dart:async library after 3 seconds for task is to execute
    Timer(const Duration(seconds: 2), () {
      //For routing to a new screen
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              appIcon(100, 20),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Linked",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  appIcon(20, 4)
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }

  Widget appIcon(double sizeOfIcon, double paddingValue) {
    return Container(
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sizeOfIcon / 4),
          color: Colors.blueAccent),
      child: Icon(
        Icons.work,
        size: sizeOfIcon,
        color: Colors.white,
      ),
    );
  }
}
