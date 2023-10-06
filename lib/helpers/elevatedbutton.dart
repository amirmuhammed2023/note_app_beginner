import 'package:flutter/material.dart';
import 'package:tasksapp2/helpers/colors.dart';

class mybutton extends StatelessWidget {
   mybutton({required this.text,required this.onpress,@required this.withelevation});
  VoidCallback onpress; 
  double? withelevation ;
  String text ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kmaincolor0,
                elevation:withelevation, 
              ),
              onPressed:onpress,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Text(text,style:TextStyle(fontSize:14),),
              ),
               );
  }
}