
import 'package:flutter/material.dart';
import 'package:flutter_application_project/screens/wilks_screen.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
     appBar: AppBar(
      title: Text("Home Page"),backgroundColor: Color.fromARGB(255, 18, 108, 21),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Welcome To Calories Calculator ",style: TextStyle(color: Color.fromARGB(255, 18, 108, 21),fontSize: 25,fontWeight: FontWeight.bold),),
           ],
         ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Press the button to start:",style: TextStyle(color: Color.fromARGB(255, 18, 108, 21),fontSize: 25,fontWeight: FontWeight.bold),),
           ],
         ),
      ElevatedButton(onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>  WilksScreen(),));
      },style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 108, 21)), child: Text("Calorie Calculator")
      ),
    ],)
     );
  }
}