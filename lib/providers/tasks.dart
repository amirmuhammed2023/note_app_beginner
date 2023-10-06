import 'package:flutter/material.dart';
import 'package:tasksapp2/models/start.dart';

class mytasks extends ChangeNotifier{
 
 List <onetask> alltasks = [] ; 

  newtask (String a , String d , Color t ){
    alltasks.add(
      onetask(address: a, descrip: d, thecolor: t, status:false) 
    );
    notifyListeners();
  }

  deletetask (int i){
     alltasks.remove(alltasks[i]) ;
     notifyListeners() ;
  }

  deletealltasks(){
    alltasks.clear();
    notifyListeners();
  }

  dotask(int i){
    alltasks[i].status = !alltasks[i].status ;
    notifyListeners();
  }
  
  int completedtask(){
    int taskstrue = 0 ;

    alltasks.forEach((element) {
      if(element.status == true){
        taskstrue++ ;
      }
     });
    return taskstrue ; 
    //notifyListeners();
  }

}