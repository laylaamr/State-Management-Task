import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangagment/second_page.dart';
import 'package:state_mangagment/widgets/models/state_model.dart';
import 'package:state_mangagment/widgets/textbox.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 160,),

            Text("Sign Up",style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Consumer<StateModel>(
              builder: (context, stateModel, child) {
                return Textbox(
                  hintValue: 'Full Name',
                  onChange: (value) {
                    stateModel.name = value;
                    stateModel.nameNotifier();
                  },
                );
              },
            ),
            SizedBox(height: 20,),
            Consumer<StateModel>(
              builder: (context, stateModel, child) {
                return Textbox(
                  hintValue: 'Email',
                  onChange: (value) {
                    stateModel.email = value;
                    stateModel.emailNotifier();
                  },
                );
              },
            ),
            SizedBox(height: 20,),
            Consumer<StateModel>(
              builder: (context, stateModel, child) {
                return Textbox(
                  hintValue: 'Phone number',
                  onChange: (value) {
                    stateModel.phoneNumber = value;
                    stateModel.phoneNumberNotifier();
                  },
                );
              },
            ),
            SizedBox(height: 20,),
            Consumer<StateModel>(
              builder: (context, stateModel, child) {
                return Textbox(
                  hintValue: 'Password',
                  onChange: (value) {
                    stateModel.password = value;
                    stateModel.passwordNotifier();
                  },
                );
              },
            ),
            SizedBox(height: 80,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => const SecondPage(),)
                  );
            }, child: const Text("Sign Up",style:  TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),))
        ],),
      ),

    );
  }
}
