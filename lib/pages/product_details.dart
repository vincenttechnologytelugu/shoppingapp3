import 'package:flutter/material.dart';
import 'package:shopping3/widget/support_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:Color(0xFFfef5f1),
      appBar:AppBar(
        title: Text("Product Details"),
        backgroundColor: Colors.red,
      ) ,
      body: Container(
       padding: EdgeInsets.only(top:50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           Stack(
              children:[ GestureDetector(
                onTap: () {
                Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding:EdgeInsets.all(10) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),border: Border.all()
                  ),
                  child: Icon(Icons.arrow_back,size: 60,)),
              ),
              Center(child:
 Image.asset("assets/images/headphone2.png",height:400 ,)
 )
              ]
            ),
Expanded(
  child: Container(
    padding: EdgeInsets.only(top:20,left: 20,right: 20 ),
    decoration: BoxDecoration(
      color:Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)) 
    ),
    width: MediaQuery.of(context).size.width,child:
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
             Text("HeadPhone",style: AppWidget.boldTextFeildStyle(),
             ),
             Text("\$300",style:TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold,)  )
           ],
         ),
         SizedBox(
          height: 20,
         ),
         Text("Details",style:AppWidget.semiBoldTextFeildStyle() ,),
         SizedBox(height: 20,),
         Text("The Product is very good.It have a one year warranty,these head phones are too good like you can also listen a person speaking slowly but be aware of suneel speaks lowdly"),
         SizedBox(height: 90,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            decoration:BoxDecoration(
              color: Colors.red,borderRadius: BorderRadius.circular(10)
            ) ,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("Buy Now",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
          )
       ],
     ),
  ),
)
          ],
        ),
      ),
    );
  }
}