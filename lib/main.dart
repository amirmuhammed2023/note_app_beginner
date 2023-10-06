import 'package:flutter/material.dart';
import 'package:tasksapp2/pages/onboarding_page.dart';
import 'package:provider/provider.dart';
import 'package:tasksapp2/providers/calendarformat.dart';
import 'package:tasksapp2/providers/currentpage.dart';
import 'package:tasksapp2/providers/tasks.dart';

void main() {
  runApp(const todoapp());
}

class todoapp extends StatelessWidget {
  const todoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => currentpag()),
        ChangeNotifierProvider(create:(context) => mycalendar()),
        ChangeNotifierProvider(create:(context) => mytasks()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home: onboarding(),
      ),
    );
  }
}