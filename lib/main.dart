
import 'package:classroom_app/data/stateData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'components/Home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StateData>( 
      
     
      create: ( context) =>StateData(),
      child: MaterialApp( 
        debugShowCheckedModeBanner: false,
        title: 'Standby ClassRoom', 
        home: Home(),
      //  theme: ThemeData.dark(),
    
      ),
    );
  }
}




