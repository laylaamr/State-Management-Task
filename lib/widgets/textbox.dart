import 'package:flutter/material.dart';
class Textbox extends StatefulWidget {
  String hintValue;
  final TextInputType keyboardType;
  final bool obscureText;
  final void Function(String)? onChange;
   Textbox({
     super.key,
     required this.hintValue,
     this.keyboardType = TextInputType.text,
     this.obscureText = false,
     this.onChange,});

  @override
  State<Textbox> createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  get hintValue => null;

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
       color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset:const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        onChanged: widget.onChange,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.hintValue,
          labelStyle:const TextStyle(color: Colors.grey ,fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  
  }
}
