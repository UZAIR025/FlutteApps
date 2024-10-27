import 'package:flutter/material.dart';
import 'package:untitled/screens/bottom_bar.dart';
import 'package:untitled/utils/app_style.dart';

void main() {
  runApp(const MyApp() );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /*String value = 'MOHAMED';
  void clickMe(){
    setState(() {
      value = "UZAIR";
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "I DON'T KNOW",
      theme: ThemeData(

        primaryColor: primary,
        ),
      home: const BottomBar(),
    );
  }
}






  /*
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xff12a640),

    ),
    home : MyApp(),
    debugShowCheckedModeBanner: false,
  )
  );
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scafold();
  }
}

}
   */