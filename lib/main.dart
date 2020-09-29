import 'package:flutter/material.dart';
import 'oldform.dart';
import 'firstpage.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstpage(),
    );
  }
}
