import 'package:classroom_app/components/navTabs/homepage.dart';
import 'package:classroom_app/data/stateData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:classroom_app/components/navTabs/courses.dart';
import 'package:provider/provider.dart';
import 'navTabs/Class.dart';
import 'navTabs/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key); 
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  static const List<Widget> _widgetOptions = <Widget>[
   Homepage(),
  Course(),
  Draw(),
    Class(),
  ];

  void _onItemTapped(int index) {
   Provider.of<StateData>(context,listen: false).change(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(Provider.of<StateData>(context).selectedIndex),

      bottomNavigationBar: BottomNavigationBar( 
         unselectedItemColor: Colors.white, 
         selectedFontSize: 14,
         unselectedFontSize: 14,
          showSelectedLabels: false, 
          type: BottomNavigationBarType.fixed, 
          
          showUnselectedLabels: false, 
         selectedIconTheme: IconThemeData( 
           color: Colors.red,
           size: 30
         ),
          currentIndex: Provider.of<StateData>(context).selectedIndex,
          
          onTap: _onItemTapped,
         backgroundColor: Colors.blueAccent,
          items: const <BottomNavigationBarItem>[ 
            

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueAccent,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.class_),
              label: 'Courses',
              backgroundColor: Colors.blueAccent,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.blueAccent,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined),
              label: 'Class',
              backgroundColor: Colors.blueAccent,
            ),
  ]),
    );
  }
}
