import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangagment/widgets/models/state_model.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.5ca9f052f9711c0a36f5c311649efd06?rik=29UPIj%2f6Wuemhg&pid=ImgRaw&r=0"),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Consumer<StateModel>(builder: (context, stateModel, child) {
            return Text(
              "Quantity: ${stateModel.counter}",
              style: TextStyle(fontSize: 25),
            );
          }),
        ],
      ),
    );
  }
}
