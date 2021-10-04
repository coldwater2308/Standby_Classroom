
import 'package:classroom_app/components/Course/courseComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Available extends StatelessWidget {
 
 // ignore: non_constant_identifier_names
 final BuildContext Context;
   Available({required this.Context}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold( 
          
            body: ListView(
              
                children: [
                  CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ),
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ), 
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ), 
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"" ,
                  ), 
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ), 
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ), CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ), 
                   CourseComponent(
                    Context: Context, 
                    Title:" Full ML Bootcamp",
                    Ins:"Shubham Maurya" ,
                  ),
                ],
              ),
            )
        
    );
  }
}