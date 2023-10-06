import 'package:flutter/material.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:tasksapp2/helpers/elevatedbutton.dart';
import 'package:tasksapp2/pages/home_page.dart';

class login111 extends StatelessWidget {
  const login111({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon:Icon(Icons.arrow_back,color:Colors.black,),onPressed:(){Navigator.pop(context);},)
      ),
      body:Padding(
        padding: const EdgeInsets.only(left:20,right:20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*0.1,
            ),
            Text("Welcome to you !",style:TextStyle(fontSize:30,fontWeight:FontWeight.w600),),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.008,
            ),
            Text("Sign in to continue  ... ",style:TextStyle(color:Colors.grey,fontSize:16),),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.06,
            ),
            Text("User Name",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500),),
            TextFormField(
             decoration: InputDecoration(
              hintText:"Abdelrhman Hany"
             ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.06,
            ),
            Text("password",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500),),
            TextFormField(
             decoration: InputDecoration(
              hintText:"Your Password"
             ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.008,
            ),
            InkWell(
              onTap:(){},
              child:Align(
                alignment:Alignment.bottomRight,
                child: Text("Forgot password ?",style:TextStyle(fontSize:15,color:Colors.blue))),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.13,
            ),
            mybutton(
              onpress:(){
               Navigator.push(context, MaterialPageRoute(builder:(context) {
                 return homepage();
               },));
              },
            
              text:"Sign In",
              )
            /*ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kmaincolor0,
                  //elevation:10,
                ),
                onPressed:(){
                 /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return login111() ;
                  },)
                  );*/
                }, 
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text("Sign in",style:TextStyle(fontSize:14),),
                ),
                )*/
          ],),
        ),
      ),
    );
  }
}