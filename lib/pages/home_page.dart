import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasksapp2/helpers/bottomcontainer.dart';
import 'package:tasksapp2/helpers/colors.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tasksapp2/pages/addtask_page.dart';
import 'package:tasksapp2/pages/taskdescription.dart';
import 'package:tasksapp2/providers/calendarformat.dart';
import 'package:tasksapp2/providers/tasks.dart';

class homepage extends StatelessWidget {
  homepage({super.key});
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final classinstance3 = Provider.of<mycalendar>(context);
    final classinstance6 = Provider.of<mytasks>(context);
    return Scaffold(
      //backgroundColor: kmaincolor3,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return addtask();
            },
          ));
          /*showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30))
                ), 
                 backgroundColor:kmaincolor2,
                 title:Column(children: [
                   TextButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return addtask() ;
                    },));
                   }, child: Text("New task",style:TextStyle(color:Colors.black,fontSize:20),)),
                   Divider(thickness:2,indent:20,endIndent:20,color:kmaincolor0,),
                   TextButton(onPressed:(){}, child: Text("New task",style:TextStyle(color:Colors.black,fontSize:20),)),
                   Divider(thickness:2,indent:20,endIndent:20,color:kmaincolor0,),
                   TextButton(onPressed:(){}, child: Text("New task",style:TextStyle(color:Colors.black,fontSize:20),)),
                 ],),
              );
            },
            );*/
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),

      appBar: AppBar(
        backgroundColor: kmaincolor0,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                classinstance6.deletealltasks();
              },
              icon: Icon(
                Icons.delete_forever,
                color: kmaincolor2,
                size: 30,
              )),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          "My tasks",
          style: TextStyle(color: kmaincolor2, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
              calendarFormat: classinstance3.stateofcalendar,
              startingDayOfWeek: StartingDayOfWeek.monday,
              onFormatChanged: (format) {
                classinstance3.onchangeformat(format);
              },
              focusedDay: today,
              firstDay: DateTime(2000),
              lastDay: DateTime(2030)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Today : ${today.day} - ${today.month} - ${today.year}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(children: [
                  Text(
                    "${classinstance6.completedtask()}/${classinstance6.alltasks.length}",
                    style: TextStyle(
                        fontSize: 28,
                        color:
                         classinstance6.completedtask() == classinstance6.alltasks.length ?
                         Colors.green :
                         Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: classinstance6.alltasks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  child: Slidable(
                    endActionPane:
                        ActionPane(motion: BehindMotion(), children: [
                      SlidableAction(
                        onPressed: (h) {},
                        icon: Icons.edit,
                        label: 'Edit',
                      ),
                      SlidableAction(
                        onPressed: (h) {
                          classinstance6.deletetask(index);
                        },
                        backgroundColor: Color(0xFFFE4A49),
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ]),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return taskdescription(
                              tasoka: classinstance6.alltasks[index],
                            );
                          },
                        ));
                      },
                      child: Card(
                        color: kmaincolor3,
                        elevation: 2,
                        child: ListTile(
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 22,
                                width: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        color: classinstance6
                                            .alltasks[index].thecolor,
                                        width: 4)),
                              ),
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                classinstance6.alltasks[index].address,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  classinstance6.dotask(index);
                                },
                                icon: classinstance6.alltasks[index].status ==
                                        false
                                    ? Icon(
                                        Icons.star_border,
                                        size: 35,
                                      )
                                    : Icon(
                                        Icons.star,
                                        size: 35,
                                        color: Colors.yellow,
                                      ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            classinstance6.alltasks[index].descrip,
                            style: TextStyle(),
                          ),
                          trailing: Container(
                            width: 5,
                            height: 36,
                            color: classinstance6.alltasks[index].thecolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          bottomcontainer(),
        ],
      ),
    );
  }
}
