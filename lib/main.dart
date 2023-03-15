import 'package:flutter/material.dart';
import 'package:image1/feedback.dart';
import 'package:image1/images1.dart';
import 'package:image1/images2.dart';
import 'package:image1/images3.dart';
import 'package:image1/login.dart';
import 'package:image1/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Images1(),
      debugShowCheckedModeBanner: false,
      routes: {
        'image3':(context)=>const Images3(),
        'image2':(context)=>const Images2(),
        'feedback':(context)=>const FeedBack(),

      },
    );
  }
}
