import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class mycalendar extends ChangeNotifier{
  CalendarFormat stateofcalendar = CalendarFormat.week ;
   
  onchangeformat(CalendarFormat y){
    stateofcalendar = y ;
    notifyListeners();
  }

}