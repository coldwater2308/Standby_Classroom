import 'package:classroom_app/data/stateData.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

Future<bool> onBack(BuildContext context) async {
 
 Provider.of<StateData>(context,listen: false).change(0); 
   
   return false ;
}