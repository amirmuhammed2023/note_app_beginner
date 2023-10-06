import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasksapp2/helpers/coloroftask.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:tasksapp2/helpers/elevatedbutton.dart';
import 'package:tasksapp2/helpers/textdescription.dart';
import 'package:tasksapp2/helpers/textformfield.dart';
import 'package:tasksapp2/providers/tasks.dart';

class addtask extends StatelessWidget {
  addtask({super.key});
  String amir = "", abdelrhman = "";
  Color? mohammed = Colors.white;
  @override
  Widget build(BuildContext context) {
    final classinstance5 = Provider.of<mytasks>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kmaincolor0,
        elevation: 0,
        title: Text(
          "Add task",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: double.infinity,
              color: kmaincolor0,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  color: kmaincolor0),
            ),
            Positioned(
              right: 25,
              left: 25,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Title",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      myfield(
                        mytext: "Go shopping",
                        onchange: (value) {
                          amir = value!;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Description",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      description(
                          tex: "I well go today and buy tomato ... ",
                          onchange: (value) {
                            abdelrhman = value!;
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Color",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          colorss(
                            choose: Colors.red,
                            ontap: () {
                              mohammed = Colors.red;
                            },
                          ),
                          colorss(
                            choose: Colors.teal,
                            ontap: () {
                              mohammed = Colors.teal;
                            },
                          ),
                          colorss(
                            choose: kmaincolor0,
                            ontap: () {
                              mohammed = kmaincolor0;
                            },
                          ),
                          colorss(
                            choose: kmaincolor1,
                            ontap: () {
                              mohammed = kmaincolor1;
                            },
                          ),
                          colorss(
                            choose: Colors.green,
                            ontap: () {
                              mohammed = Colors.green;
                            },
                          ),
                          colorss(
                            choose: Colors.yellow,
                            ontap: () {
                              mohammed = Colors.yellow;
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Center(
                          child: mybutton(
                              text: "Add",
                              onpress: () {
                                classinstance5.newtask(amir!,abdelrhman!,mohammed!) ;
                              })),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
