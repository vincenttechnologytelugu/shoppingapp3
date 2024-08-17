import 'package:flutter/material.dart';
import 'package:shopping3/pages/login.dart';

import '../widget/support_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Signup Page",style: TextStyle(color: Colors.red),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:40.0,left: 20.0,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Image.asset("assets/images/login.png"),
        Center(child: Text("Signup",style: AppWidget.semiBoldTextFeildStyle(),)),
        SizedBox(height: 20,),
        Text("Please enter the Details bellow to Continue",style: AppWidget.lightTextFeildStyle(),),
        SizedBox(height: 40,),
        Text("Name",style: AppWidget.semiBoldTextFeildStyle(),),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(color: Color(0xFFf4f5f9),borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,hintText: "Name"),
        
          ),
        ),
        SizedBox(height: 20,),
        Text("Email",style: AppWidget.semiBoldTextFeildStyle(),),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(color: Color(0xFFf4f5f9),borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,hintText: "Email"),
        
          ),
        ),
        
        
        SizedBox(height: 40,),
        Text("Password",style: AppWidget.semiBoldTextFeildStyle(),),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(color: Color(0xFFf4f5f9),borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,hintText: "Password"),
        
          ),
        ),
       
       
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
        color: Colors.green,borderRadius: BorderRadius.circular(10),),
        child: Center(child: Text("SIGNUP",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
           ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already Have an Account?",style:AppWidget.lightTextFeildStyle(),),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              child: Text("SignIn",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.w500),)),
          ],
        )
            ],
          ),
        ),
      ),
    );
  }
}