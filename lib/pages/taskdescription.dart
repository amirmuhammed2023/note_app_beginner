import 'package:flutter/material.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:tasksapp2/models/start.dart';

class taskdescription extends StatelessWidget {
   taskdescription({required this.tasoka});
   final onetask tasoka ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Description",style:TextStyle(fontSize:30),),
        centerTitle:true,
        backgroundColor:kmaincolor0,
      ),
      body:ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10,horizontal:5),
          child: Text(tasoka.address,style:TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
        ),
        Divider(thickness:2,color:Colors.grey,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:7,horizontal:5),
          child: Text(tasoka.descrip,style:TextStyle(fontSize: 20),),
        )
      ]),
    );
  }
}