import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:tasksapp2/providers/currentpage.dart';

/*AnimatedContainer hellooo(int pagenum){
 return AnimatedContainer(
    height: 10,
    width: 10,
    decoration:BoxDecoration(
    borderRadius:BorderRadius.all(Radius.circular(5)),
    color:Colors.black
  ), duration: Duration(milliseconds: 100),
  );
}*/


class animatecontainer extends StatelessWidget {
   animatecontainer({required this.i});
  int i ;
  @override
  Widget build(BuildContext context) {
    final classinstance2 = Provider.of<currentpag>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:4),
      child: AnimatedContainer(
        height: 10,
        width: classinstance2.mypagenumber == i ? 15 : 8,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(5)),
          color:classinstance2.mypagenumber == i ? Colors.black : Colors.grey 
      ), duration: Duration(milliseconds: 100),
       ),
    );
  }
}