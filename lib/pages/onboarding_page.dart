import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasksapp2/helpers/animatecontainer.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:tasksapp2/helpers/elevatedbutton.dart';
import 'package:tasksapp2/helpers/pageonboard.dart';
import 'package:tasksapp2/pages/login_page.dart';
import 'package:tasksapp2/providers/currentpage.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final classinstance = Provider.of<currentpag>(context);
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.6,
              child: PageView(
                children: [
                  mypage(
                    image: "assets/images/todo1.png",
                    description: "It is a very special application , You can write your daily tasks with an enthusiastic approach to implementing them. Come start with us and accomplish your tasks.",
                    text: "Made for you"
                    ),
                 mypage(
                    image: "assets/images/todo2.png",
                    description: "It is a very special application , You can write your daily tasks with an enthusiastic approach to implementing them. Come start with us and accomplish your tasks.",
                    text: "Let's do hard work"
                    ),
                 mypage(
                    image: "assets/images/todo3.png",
                    description: "It is a very special application , You can write your daily tasks with an enthusiastic approach to implementing them. Come start with us and accomplish your tasks.",
                    text: "Good work"
                    ),     
                ],
                onPageChanged: (value) => classinstance.getpagenumber(value),
              ),
            ),
          Row(
           mainAxisAlignment:MainAxisAlignment.center,
           children:List.generate(3, (index) => animatecontainer(i: index)) 
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              ),
          Stack(children: [
               mybutton(
                onpress:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return login111() ;
                },));
                },
                withelevation:10,
                text:"Get Start",
               ),
          ],)
          ],
        ),
      )
    );
  }
}