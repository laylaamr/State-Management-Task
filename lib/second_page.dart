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
          const SizedBox(height: 40,),
Row(children: [
    Consumer<StateModel>(
    builder: (context, stateModel, child) {
    return CircleAvatar(
    backgroundImage: NetworkImage(stateModel.imageUrl),
    );
    },
    ),
  SizedBox(width: 30,),
  Consumer<StateModel>(
    builder: (context, stateModel, child) {
      return Text('Hi ${stateModel.name}',style: TextStyle(fontSize: 25),);
    },
  ),
  SizedBox(width: 130,),
  Icon(Icons.search,size:40,color: Colors.black,),
  SizedBox(width: 10,),
  Consumer<StateModel>(
    builder: (context, stateModel, child) {
      return Stack(
        children: <Widget>[
         IconButton(
         icon: Icon( Icons.shopping_cart,
           size: 30,
           color: Colors.black,), onPressed: () {
           Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (context) => const FinalScreen(),)
           );
         },
          ),
          Positioned(
            right: 1,
            top:1,
            child: Container(
           //   padding: EdgeInsets.all(2),
              width:15,
              height: 15,
              decoration: BoxDecoration(

                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Text(
                "${stateModel.counter}",
                style:const  TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      );
    },
  ),
],),
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
          SizedBox(height: 10,),
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
          SizedBox(height: 20,),
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
