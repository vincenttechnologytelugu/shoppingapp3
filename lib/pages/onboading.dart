import 'package:flutter/material.dart';

class Onboading extends StatefulWidget {
  const Onboading({super.key});

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Color(0xffecefe8),
      body:Container(
        margin: EdgeInsets.only(top: 150.0,left: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
Image.asset("assets/images/headphone.png",),
Padding(
  padding: const EdgeInsets.only(left:20.0),
  child: Text("Explore\nThe Best\n Products",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.black45),),
),
SizedBox(
  height: 20,
),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  
  children: [
    Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      
      decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
      child: Text("Next",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
    ),
  ],
)
          ],
        ),
      ) 
    );
  }
}