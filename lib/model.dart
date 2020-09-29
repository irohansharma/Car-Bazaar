import 'package:flutter/material.dart';
////////NO USE updated 23 feb 2020
class User {
  static const String Flutter="flutter" ;
  static const String Android="andriod";
  static const String Ios ="ios";
  String FristName="";
  String LastName="";
  Map<String,bool> tech={
    Flutter:false,
    Android:false,
    Ios:false
  };
  bool trainer =false;
  save(){
    //print("hi");
  }
}
