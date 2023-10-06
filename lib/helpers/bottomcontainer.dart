import 'package:flutter/material.dart';
import 'package:tasksapp2/helpers/colors.dart';

class bottomcontainer extends StatelessWidget {
  const bottomcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width:double.infinity,
            height:MediaQuery.of(context).size.height*0.07,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.only(topLeft:Radius.circular(12),topRight: Radius.circular(12)),
              color:kmaincolor0
            ),
            child: Row(
              children: [
                SizedBox(
                  width:MediaQuery.of(context).size.width * 0.05,
                ),
                IconButton(
                  onPressed:(){}, 
                  icon: Icon(Icons.notes,color:kmaincolor2,size:33,)
                  ),
                SizedBox(
                  width:MediaQuery.of(context).size.width * 0.069,
                ),
                IconButton(
                  onPressed:(){}, 
                  icon: Icon(Icons.task_alt,color:kmaincolor2,size:33,)
                ),  
                SizedBox(
                  width:MediaQuery.of(context).size.width * 0.27,
                ),
                IconButton(
                  onPressed:(){}, 
                  icon: Icon(Icons.quickreply_outlined,color:kmaincolor2,size:33,)
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width * 0.069,
                ),
                IconButton(
                  onPressed:(){}, 
                  icon: Icon(Icons.person,color:kmaincolor2,size:33,)
                ),

              ],
            ),
          );
  }
}