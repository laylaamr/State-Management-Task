import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangagment/final_screen.dart';
import 'package:state_mangagment/widgets/models/state_model.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
SizedBox(height: 60,),
          Container(
            width: double.infinity,
            height: 400,
            decoration:const BoxDecoration(
              image:DecorationImage(
                image: NetworkImage("https://th.bing.com/th/id/R.5ca9f052f9711c0a36f5c311649efd06?rik=29UPIj%2f6Wuemhg&pid=ImgRaw&r=0"),
              ),

            ),
          ),
          Consumer<StateModel>(
            builder: (context, stateModel, child) {
              return Center(
                child: Text(
                  'Welcome ${stateModel.name} \n your email is ${stateModel.email} \n your mobile number is ${stateModel.phoneNumber} ',
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                ),
              );
            },
          ),
          SizedBox(height: 30,),
          const Text("Quantity",  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
          Container(
            width: 150,
            height: 60,
           decoration: BoxDecoration(
             color: Colors.grey,
             borderRadius: BorderRadius.circular(20.0),
           ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

  Consumer<StateModel>(
      builder: (context, stateModel, child){
        return IconButton(onPressed: (){
          stateModel.inc();
        }, icon: Icon(Icons.add,size: 25,)) ;
      }
  ),


  Consumer<StateModel>(
      builder: (context, stateModel, child){
        return   Text( "${stateModel.counter}", style: TextStyle(fontSize: 25),);
      }
  ),

  Consumer<StateModel>(
      builder: (context, stateModel, child){
        return  IconButton(onPressed: (){
          stateModel.dec();
        }, icon: Icon(Icons.remove,size: 25,));
      }
  ),



],),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FinalScreen(),)
            );
          }, child: const Text("Add to cart",style:  TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),))
        ],
      ),
    );
  }
}
