import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:shopping3/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories=[
    "assets/images/headphone.png",
       "assets/images/laptop.png",
        "assets/images/watch.png",
       "assets/images/tv.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xfff2f2f3),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey,Sunel lKumar",
                      style: AppWidget.boldTextFeildStyle(),
                      ),
                       Text("Good Morning",style:AppWidget.lightTextFeildStyle(),
              ),
              
                      
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/Boy_PNG_Picture.png",width: 80,height: 80,fit: BoxFit.cover,))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10),),
                width: MediaQuery.of(context).size.width,
                child: TextField(
        
                  decoration:InputDecoration(border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle:AppWidget.lightTextFeildStyle(),
                  prefixIcon: Icon(Icons.search,color: Colors.black,size: 30,)) ,
                )
                ),
                SizedBox(
                  height:20 ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text("Categories",style:AppWidget.semiBoldTextFeildStyle()
                   ),
                    Text("See all",style:TextStyle(color:Colors.orange,fontSize: 30,fontWeight: FontWeight.bold)
                   )
                 ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                     Container(
                      height: 130,
                        padding: EdgeInsets.all(20),
                         margin: EdgeInsets.only(left: 20),
        
                     decoration: BoxDecoration(
          color: Colors.orange,borderRadius: BorderRadius.circular(15)
        ),
             
        child:Center(child: Text("All",style: AppWidget.boldTextFeildStyle(),)),
            ),
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.only(left: 20,),
                        padding: EdgeInsets.zero,
                        height: 140,
                       child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                         return CategoryTile(images: categories[index]);
                       }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text("All Products",style:AppWidget.semiBoldTextFeildStyle()
                   ),
                    Text("See all",style:TextStyle(color:Colors.orange,fontSize: 30,fontWeight: FontWeight.bold)
                   )
                 ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height:220 ,
                  decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                            margin: EdgeInsets.only(right: 20),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                       Image.asset("assets/images/headphone.png",width: 150,height: 150,fit: BoxFit.cover,),
                      Text("Headphone",style: AppWidget.semiBoldTextFeildStyle(),),
                      Row(
                      
                        children: [
                          Text("\$100",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,)),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,borderRadius: BorderRadius.circular(8)
                            ),
                            
                            child: Icon(Icons.add,color: Colors.white,)
                            )
                        ],
                      )
                        ],
                        ),
                      ),
                       Container(
                        
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                      Image.asset("assets/images/watch.png",width: 150,height: 150,fit: BoxFit.cover,),
                      Text("Apple Watch",style: AppWidget.semiBoldTextFeildStyle(),),
                      Row(
                      
                        children: [
                          Text("\$300",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,)),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,borderRadius: BorderRadius.circular(8)
                            ),
                            
                            child: Icon(Icons.add,color: Colors.white,)
                            )
                        ],
                      )
                        ],
                        ),
                      ),
        
        
        
                      Container(
                    margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                       Image.asset("assets/images/laptop.png",width: 150,height: 150,fit: BoxFit.cover,),
                      Text("Laptop",style: AppWidget.semiBoldTextFeildStyle(),),
                      Row(
                      
                        children: [
                          Text("\$200",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,)),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,borderRadius: BorderRadius.circular(8)
                            ),
                            
                            child: Icon(Icons.add,color: Colors.white,)
                            )
                        ],
                      )
                        ],
                        ),
                      ),
        
        
        
        
                       Container(
                    margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                       Image.asset("assets/images/tv.png",width: 150,height: 150,fit: BoxFit.cover,),
                      Text("LED SCREEN",style: AppWidget.semiBoldTextFeildStyle(),),
                      Row(
                      
                        children: [
                          Text("\$300",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,)),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,borderRadius: BorderRadius.circular(8)
                            ),
                            
                            child: Icon(Icons.add,color: Colors.white,)
                            )
                        ],
                      )
                        ],
                        ),
                      )
                      
                    ],
                  ),
                )
               
             
            ],
            
          ),
        ),
      ),
    );

  }
    
}
  class CategoryTile extends StatelessWidget {
  // const CategoryFile({super.key});
  String images;
  CategoryTile({required this.images});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20),
      
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(15)
      ),
      height: 90,
      width:90,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(images,height: 50,width:50,fit: BoxFit.cover,),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.arrow_forward,size: 30,)
        ],
      ) ,
    );
  }
}