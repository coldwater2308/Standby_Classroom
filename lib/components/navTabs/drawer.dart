import 'package:classroom_app/config/onBack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return onBack(context);
      }
      ,
      child: Scaffold(
    appBar: AppBar(
      title: Text("Assignments"),
    ),
      ),
    );
  }
}
