import 'package:classroom_app/config/onBack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Course/Available.dart';
import '../Course/Enrolled.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  _CourseState createState() => _CourseState();
}


class _CourseState extends State<Course> {


  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () {
        return onBack(context);
      }
      ,
      child: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
          
            appBar: AppBar(   
              actions: <Widget>[
          PopupMenuButton<String>(
           
            itemBuilder: (BuildContext context) {
              return { 'Favourites'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
              
              title: Text(
                "Courses"
              ),
              bottom:    TabBar(
                  tabs: [
                    Tab(text: 'Enrolled'),
                    Tab(text: 'Available',),
        
                  ],
            )
        
            ),
        
        
        
            body: TabBarView(
              children: [
                Enrolled( Context : context),
                Available(Context: context),
        
              ],
            ),
        
            ),
        ),
      ),
    );

  }
}




