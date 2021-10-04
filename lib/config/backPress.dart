import 'package:flutter/material.dart';

Future<bool> onBackPress(BuildContext Context   ) async {
    return await  showDialog(
        context: Context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              Container( 
                color: Colors.white, 
                child: FlatButton( 
                  textColor: Colors.black,
                  child: Text('NO'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ),
              Container( 
                color: Colors.redAccent,
                child: FlatButton(  
                  textColor: Colors.white,
                  child: Text('YES'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ),
            ],
          );
        });
  }