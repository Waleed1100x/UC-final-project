import 'package:flutter/material.dart';

class WilksScreen extends StatefulWidget {
WilksScreen({ Key? key }) : super(key: key);

  @override
  State<WilksScreen> createState() => _WilksScreenState();
}
class _WilksScreenState extends State<WilksScreen> {
String ? gender = "" ;
  String dropdownvalue = 'Sedentary (office job)';  
  var items = [   
    'Sedentary (office job)',
    'light Exercise (1-2 days)',
    'Modreate Exercise (3-5 days)',
    'Heavy Exercise (6-7 days)',
    'Athlete (2x per day)',
  ];
  final age = TextEditingController();
  final weight = TextEditingController();
  final height = TextEditingController();
  double Totalcalories = 0 ; 
int currentindex = 0;
  @override
  Widget build(BuildContext context){

    return Container(
      child: Scaffold(
          backgroundColor: Colors.grey,
        appBar: AppBar(
      title: Text("Home Page"),backgroundColor: Color.fromARGB(255, 18, 108, 21),) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                const Text('gender:'),
      Row(children: [
        
      ],),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  
  children: [
    
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 108, 21)),
          onPressed: () {
    
      int index = 1 ; 
    
      changeIndex(index);
    
    }, child: Text('Male')),
        ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 108, 21)),
        onPressed: () {
    
        int index = 2 ; 
    
        changeIndex(index);
    
    },child: Text('Female'),
        ),
      )
  ],
),
             Text("$gender "),
             
          Container(width: 150,child: TextField(controller: age,keyboardType: TextInputType.number,decoration: InputDecoration(hintText: "Age", ),)),
        Container(width: 150,child: TextField(controller: weight,keyboardType: TextInputType.number,decoration: InputDecoration(hintText:"Weight in kg" ),)),
          Container(width: 150,child: TextField(controller: height,keyboardType: TextInputType.number,decoration: InputDecoration(hintText: "Height in cm"),)),
        DropdownButton(
               
              // Initial Value
              value: dropdownvalue,
               
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),   
               
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 108, 21))
              ,onPressed: () {
              calculator(age.text, weight.text, height.text, gender!,dropdownvalue);
            }, child:Text('Calculate!')),
      Divider(),
       Text(style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),'Your Total Maintenance Calories is $Totalcalories'),
        ],
      ), 
      )
   
    );
  }
  void changeIndex(int index){
setState(() {
 currentindex= index;
 if(index == 1){
  gender = 'Male';
 }else
 {
  gender = 'Female';
 }
});
  }
  void calculator(String sAge, String sWeight, String sHeight,String gender, String activity){
int age= int.parse(sAge);
int weight = int.parse(sWeight);
int height  = int.parse(sHeight);
if(gender == 'Male'){
Totalcalories = ((10*weight + 6.25*height - 5.0*age) + 5) ;
}
else {
Totalcalories = ((10*weight + 6.25*height - 5.0*age) - 151) ;
} 
 if(activity =='Sedentary (office job)'){
  Totalcalories += 358;
 }
    else if(activity == 'light Exercise (1-2 days)'){
      Totalcalories += 671;
    }
   else  if(activity =='Modreate Exercise (3-5 days)'){
      Totalcalories += 984;
    }
   else  if(activity == 'Heavy Exercise (6-7 days)'){
      Totalcalories += 1297;
    }
   else if(activity =='Athlete (2x per day)'){
      Totalcalories += 1610;
    }
    print(Totalcalories);
setState(() {
  
});
 }
}