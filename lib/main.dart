import 'package:flutter/material.dart';
import 'package:flutter_chat/views/signup.dart';
import './views/signin.dart';
void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.teal[800],
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: SignUp(),
    );
  }
}
