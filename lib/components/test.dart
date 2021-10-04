import 'package:classroom_app/config/backPress.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
 BuildContext Context ;
Test({required this.Context});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {  
        return onBackPress(Context) ;

      },
      child: Scaffold( 
        appBar: AppBar
      (title: Text("ClassRoom"),),
        
      ),
    );
  }
}