import 'package:flutter/material.dart';

class myfield extends StatelessWidget {
   myfield({required this.mytext,required this.onchange});
  String mytext ;
  final Function(String?) onchange ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                      onChanged:onchange,
                      decoration:InputDecoration(
                        hintText:mytext,
                        filled:true,
                        fillColor: Colors.grey.withOpacity(0.5),
                        enabledBorder:OutlineInputBorder(
                           borderRadius:BorderRadius.circular(14),
                           borderSide:BorderSide.none                       
                        ),
                        focusedBorder:OutlineInputBorder(
                           borderRadius:BorderRadius.circular(14),
                           borderSide:BorderSide.none
                        ),
                      ),
                    ) ;
  }
}