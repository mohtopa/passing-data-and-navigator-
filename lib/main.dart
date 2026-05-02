import 'package:flutter/material.dart';
import 'package:passing_data/product_details_screen.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductsScreen(),
    );
  }
}



class ProductsScreen extends StatelessWidget {

 const ProductsScreen({super.key,});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),

      body:Padding(padding:EdgeInsets.all(10),
      child: 
       ListView(
        
                  children: [
                    Row(
                      children: [
                    Expanded(
                      child:  Card(
                    child: ListTile(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen(name: "Phone", description: "VIVO 2025 ,RAM 16,MEMORY 512", price: "200 SAR", image: "./images/product-1.jpg"),),);
                    },
                      
                      title:Column(
                        children: [
                       Image.asset("./images/product-1.jpg",height: 150,width: 150,fit: BoxFit.cover,),
                       Text("Phone",style: TextStyle(fontSize: 20),),
                       Text("200 SAR",style: TextStyle(fontSize: 20),),
                       Text("VIVO 2025 ,RAM 16,MEMORY 512",style: TextStyle(fontSize: 14),),

                        ],
                      )
                     
                                  ),
                                  ),
                                  ),
                    Expanded(
                      child:  Card(
                    child: ListTile(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen(name: "Whatch", description: "Apple 2025 ,RAM 4,MEMORY 64", price: "100 SAR", image: "./images/product-2.jpg"),),);
                    },
                      
                      title:Column(
                        children: [
                       Image.asset("./images/product-2.jpg",height: 150,width: 150,fit: BoxFit.cover,),
                       Text("Whatch",style: TextStyle(fontSize: 20),),
                       Text("100 SAR",style: TextStyle(fontSize: 20),),
                       Text("Apple 2025 ,RAM 4,MEMORY 64",style: TextStyle(fontSize: 14),),

                        ],
                      )
                     
                                  ),
                                  ),
                                  ),
                    Expanded(
                      child:  Card(
                    child: ListTile(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen(name: "Camera", description: "Canon 2025 ,16 px,MEMORY 8", price: "1000 SAR", image: "./images/product-3.jpg"),),);
                    },
                      
                      title:Column(
                        children: [
                       Image.asset("./images/product-3.jpg",height: 150,width: 150,fit: BoxFit.cover,),
                       Text("Camera",style: TextStyle(fontSize: 20),),
                       Text("1000 SAR",style: TextStyle(fontSize: 20),),
                       Text("Canon 2025 ,16 px,MEMORY 8",style: TextStyle(fontSize: 14),),

                        ],
                      )
                     
                                  ),
                                  ),
                                  ),
                    Expanded(
                      child:  Card(
                    child: ListTile(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen(name: "Screen", description: "LG 2025 ,24 ensh,140 frame", price: "500 SAR", image: "./images/product-6.jpg"),),);
                    },
                      
                      title:Column(
                        children: [
                       Image.asset("./images/product-6.jpg",height: 150,width: 150,fit: BoxFit.cover,),
                       Text("Screen",style: TextStyle(fontSize: 20),),
                       Text("500 SAR",style: TextStyle(fontSize: 20),),
                       Text("LG 2025 ,24 ensh,140 frame",style: TextStyle(fontSize: 14),),

                        ],
                      )
                     
                                  ),
                                  ),
                                  ),
                   ],
                    )
              
              ],
      
       ),
      ),
    );
  }
}