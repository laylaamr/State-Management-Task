import 'package:flutter/material.dart';
class StateModel extends ChangeNotifier {
 late String name;
 late String email;
 late String phoneNumber;
 late String password;
 late String imageUrl;
 int counter = 0;
 nameNotifier(){
   notifyListeners();
 }
imageUrlNotifier(){
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