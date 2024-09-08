import 'package:flutter/material.dart';
import 'package:state_mangagment/sign_in.dart';
import 'package:provider/provider.dart';
import 'package:state_mangagment/widgets/models/state_model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) => StateModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignIn(),
      ),
    );
  }}