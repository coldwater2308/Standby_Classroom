import 'package:classroom_app/config/backPress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key); 

static const routeName = '/';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> { 

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold( 
        
        appBar: AppBar( 
          actions: <Widget>[
          PopupMenuButton<String>(
           
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
    
          title: Text(
            "ClassRoom"
          ),
        ), 
       
       
      
    )
      ;

  }
}
