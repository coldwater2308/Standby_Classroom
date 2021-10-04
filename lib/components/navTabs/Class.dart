import 'package:classroom_app/config/onBack.dart';
import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  const Class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return onBack(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Class'
          ),
        ),
      ),
    );
  }
}
