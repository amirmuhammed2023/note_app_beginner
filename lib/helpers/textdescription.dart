import 'package:flutter/material.dart';

class description extends StatelessWidget {
   description({required this.tex , required this.onchange});
  String tex ;
  final Function(String?) onchange ;
  @override
  Widget build(BuildContext context) {
    return Container(
                      width:MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height*0.2,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:Colors.grey.withOpacity(0.3)
                      ),
                      child:TextField(
                        onChanged: onchange,
                        decoration:InputDecoration(
                          border:OutlineInputBorder(
                            borderSide:BorderSide.none
                          ),   
                          hintText:tex
                        ),
                      ),
                    );
  }
}