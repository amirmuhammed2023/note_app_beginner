import 'package:flutter/widgets.dart';

class currentpag extends ChangeNotifier{
   int mypagenumber = 0  ;
   getpagenumber(int i){
    mypagenumber = i ;
    notifyListeners();
   }  
}