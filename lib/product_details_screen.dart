import 'package:flutter/material.dart';
import 'main.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String image;
  const ProductDetailsScreen({super.key, required this.name, required this.description, required this.price, required this.image, });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Products Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
         body:Padding(padding:EdgeInsets.all(10) ,
              child:Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.asset("$image",height: 300,),
                    Text("$name",style: TextStyle(fontSize: 20),),
                    Text("$price",style: TextStyle(fontSize: 20),),
                    Text("$description",style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      
                      onPressed: (){
                      Navigator.pop(context,"");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("تم الرجوع الى صفحة المنتجات"),duration: Duration(seconds: 5),));
                    }, child: Text("Back",style: TextStyle(color:Colors.blueAccent),))
                  ],

            
          ),
            
         ),
         
         )
          );
  }
}
