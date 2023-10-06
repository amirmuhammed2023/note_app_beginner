import 'package:flutter/material.dart';
import 'package:tasksapp2/helpers/animatecontainer.dart';

class mypage extends StatelessWidget {
   mypage ({required this.image,required this.description , required this.text});
  String image ,text , description ; 
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:14,right:14,top:10),
      child: Column(
        children: [
          Image.asset(image,height:MediaQuery.of(context).size.height*0.4,),
          Text(text,style:TextStyle(fontSize:25,fontWeight:FontWeight.w500),),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.02,
          ),
          Text(description,style:TextStyle(color:Colors.grey,fontSize:15),),
        ],
      ),
    );
  }
}