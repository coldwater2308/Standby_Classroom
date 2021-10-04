import 'package:flutter/material.dart';

class courseDetails extends StatelessWidget {
 courseDetails({required this.Title,required this.Ins,required this.Description});
 final String Title; 
 final String Ins;
 final String Description; 
 static final  routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Title),
        ),
        body: Column(
          children: [ 
            Expanded(  
              
              flex: 3,
              child: Center(child: Image.network('https://www.softwaretestinghelp.com/wp-content/qa/uploads/2020/02/Top-100-Free-Udmey-Courses.png'))
            ,), 
             SizedBox(
               height: 20,
             )
             , 
             Expanded( 
               flex:2 ,
               child: Text(Title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,),)
             ),

           Expanded( 
             flex: 2,
             child: Text(Ins)
           )
           ,
           Expanded(  
             flex: 8,
             child: Text(Description))
          ],
        ) ,
      ),
    );
  }
}




