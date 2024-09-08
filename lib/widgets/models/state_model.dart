import 'package:flutter/material.dart';
class StateModel extends ChangeNotifier {
 late String name;
 late String email;
 late String phoneNumber;
 late String password;
 int counter = 0;
 nameNotifier(){
   notifyListeners();
 }
emailNotifier(){
   notifyListeners();
 }
 phoneNumberNotifier(){
   notifyListeners();
 }
passwordNotifier(){
   notifyListeners();
 }
 inc() {
   counter++;
   notifyListeners();
 }

 dec() { if(counter > 0) {
      counter--;
    }
    notifyListeners();
 }
}