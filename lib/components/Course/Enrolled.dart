import 'package:classroom_app/components/Course/courseComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Enrolled extends StatelessWidget { 
  Enrolled({ required  this.Context}) ;
 final  BuildContext  Context; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold( 
          // backgroundColor: Colors.teal,
            body: ListView(
              children: [
                CourseComponent( 
                  Context : Context,
                  Title: "The Complete 2021 Flutter Bootcamp",
                  Ins: "Shubham Maurya",
                ), 
                CourseComponent( 
                  Context : Context,
                  Title: "The Complete 2021 Flutter Bootcamp",
                  Ins: "Shubham Maurya",
                ), 
              ],
            )
        )
    );
  }
}