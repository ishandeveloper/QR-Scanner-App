import 'package:flutter/material.dart';

import 'homepage.dart';

void main()=>runApp(QRApp());

class QRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"QR Scanner",
      theme: ThemeData(
        brightness:Brightness.light,
        primarySwatch: Colors.blue, 
        ),
      home:HomePage()
      
    );
  }
}