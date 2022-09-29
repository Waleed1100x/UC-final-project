import 'package:flutter/material.dart';

class WilksScreen extends StatefulWidget {
WilksScreen({ Key? key }) : super(key: key);

  @override
  State<WilksScreen> createState() => _WilksScreenState();
}
class _WilksScreenState extends State<WilksScreen> {
  @override
  Widget build(BuildContext context){
String gender = "Male";
    return Container(
      child: Scaffold(
        appBar: AppBar(
      title: Text("Home Page"),backgroundColor: Color.fromARGB(255, 18, 108, 21),) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
         RadioListTile(title: Text("Male"),value: "Male", groupValue: gender, onChanged: (value){setState(() {
           gender = value.toString();
         });}),
         RadioListTile(title: Text("Female"),value: "Female", groupValue: gender, onChanged: (value){setState(() {
           gender = value.toString();
         });}),
          Row(children: [Text("Age",style: TextStyle(fontSize: 18),),TextField(keyboardType: TextInputType.number,),]),
          Row(children: [Text('Weight',style:TextStyle(fontSize: 18)),TextField(keyboardType: TextInputType.number,),],),
          Row(children: [Text('Height',style: TextStyle(fontSize: 18),),TextField(keyboardType: TextInputType.number,),],),
        ],
      ), 
      )
   
    );
  }
}