import 'package:classroom_app/components/Course/courseDetails.dart';
import 'package:flutter/material.dart';
import 'package:classroom_app/data/stateData.dart'; 
import 'package:provider/provider.dart';
class CourseComponent extends StatelessWidget {
 CourseComponent({required this.Context,required this.Title,required this.Ins});
 final String Title;
 final String Ins;  
 final String Description=' Decription';
 final BuildContext Context; 
  String title="";

  @override
  Widget build(BuildContext context) {
   title= (Title.length>20) ?Title.substring(0,20)+"...":Title;
    
    return  
      GestureDetector(
        onTap: (){ 
  Navigator.push(
    Context,
    MaterialPageRoute(builder: (context) => courseDetails( 
        Title: Title, 
        Ins: Ins,
        Description: Description,
    )),
  );
},
        child: Container(     
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),  
            border: Border.all(
              color: Colors.blueAccent,
              style: BorderStyle.solid 

            ),
             
          ),
         
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: 100,
          child: Padding( 
            padding: EdgeInsets.all(5),
            child: Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(  
                  flex: 2,
                  child: Container(  
                    margin: EdgeInsets.only(right: 5),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset('lib/images/course.jpg'))
                    )
                  ),
                Expanded( 
                  flex: 8,
                  child: Padding( 
                    padding: EdgeInsets.all(5),
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Expanded(
                         
                         child: Row( 
                           children: [
                             Expanded( 
                               flex: 8,
                             child: Column( 
                             crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(title,style: TextStyle(
                                   fontWeight:FontWeight.w900,
                                   fontSize: 16,
                                 ),),
                                 Text(this.Ins),
                               ],
                             )
                             ),
                             Expanded( 
                               flex: 2,
                               child: IconButton(
                                 onPressed: (){
                                   
                                   Provider.of<StateData>(context,listen: false).colorChange();
                                 },
                                 icon:  Icon(Icons.favorite, color: (Provider.of<StateData>(context).icColor)?Colors.red:Colors.black,),
                                
                               ),
                               )  ],
                         )
                         ),
                       Expanded( 
                        
                         child: Column( 
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Text("5",style: TextStyle(
                                   fontWeight: FontWeight.w600,
                                   color: Colors.red, 
                                   
                                 ),),
                                 Text(" ⭐⭐⭐⭐⭐ (71,156)"),
                               ],
                             ) ,
                             Text("55.2 hrs . 570 lectures . All levels")
                            
                           ],
                         )
                       ),
                        
                      ],
                    ),
                  )
                  )
              ],
            ),
          ),
        ),
      );
  }
} 
 


