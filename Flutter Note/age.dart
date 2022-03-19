import 'dart:io';

import 'package:flutter/cupertino.dart';

class  AgeCalculator {
  static int age=0;
AgeCalculator(int p){
  print ("Enter Your Birth Year :");
  int birthYear =p ;
  age =DateTime.now().year - birthYear ;
  print ("your age is $age years old ");
}
}