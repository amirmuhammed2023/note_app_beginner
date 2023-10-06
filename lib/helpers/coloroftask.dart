import 'package:flutter/material.dart';

class colorss extends StatelessWidget {
   colorss({required this.choose , required this.ontap});
  Color choose ;
  //final Color Function() ontap ;
  VoidCallback ontap ; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                          onTap:ontap,
                          child: Container(
                            width:MediaQuery.of(context).size.width*0.11,
                            height:MediaQuery.of(context).size.height*0.05,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:choose
                            ),
                          ),
                        );
  }
}