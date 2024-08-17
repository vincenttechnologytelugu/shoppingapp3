import 'package:flutter/material.dart';
import 'package:shopping3/pages/order.dart';
import 'package:shopping3/pages/profile.dart';
import 'package:shopping3/pages/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
 late List<Widget> pages;
  late Home home;
 late Order order;
 late Profile profile;
 int currentTabIndex=0;
@override
  void initState() {
    home=Home();
    order=Order();
    profile=Profile();
  
    pages=[home,order,profile];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    bottomNavigationBar:BottomNavigationBar(
     
      backgroundColor:Colors.white,
    


      onTap: (int index){
       setState(() {
         currentTabIndex=index;
       });
      },
      items: const [
        
  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,),label:"shopping"),
   BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,color: Colors.black,),label:"person")
]),
body: pages[currentTabIndex],
    );
    
  }
}