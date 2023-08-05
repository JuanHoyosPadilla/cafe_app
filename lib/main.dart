// ignore_for_file: unused_import

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> images = [
    "https://www.pngall.com/wp-content/uploads/5/White-Coffee-Mug-PNG-Image.png",
    "https://www.pngmart.com/files/21/Coffee-Cup-PNG-Free-Download.png",
    "https://pngimg.es/d/mug_coffee_PNG16874.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card app',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cafe App', style: 
            TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                color: Colors.blue,
                iconSize: 30,
                  onPressed: (){}, 
                  icon: Icon(Icons.coffee_outlined),
                )
            ],
            
          ),
          body: Column(
            
            children: [
              Expanded(child: SizedBox(
                width: double.infinity,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Swiper(
                    viewportFraction: 0.8,
                    scale: 0.9,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(210, 141, 143, 254).withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(3,5), // Cambia la posición de la sombra (eje X, eje Y)
                          ),
                        ]),
                        child: Column(
                          
                          children: [
                            Image.network(
                              images[index],
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 10,),
                            const Text('Cafe',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 53, 53, 53)),),
                            const SizedBox(height: 40,),
                            const Text('8.000 Mil',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w800,color: Color.fromARGB(255, 63, 63, 63))),
                            const SizedBox(height: 60,),
                            const Text('Cafe Negro pequeño',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      );
                    },
                    itemCount: images.length,
                    pagination: const SwiperPagination(),
                  ),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                TextButton(onPressed: (){}, child: Icon(Icons.add),),
                const Text('1',style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: Icon(Icons.remove),)
              ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    iconColor: Colors.white,
                    fixedSize: Size(20, 50)
                  ),
                  onPressed: (){}, 
                  child: Icon(Icons.shopping_cart),
                ),
              )
            ],
          )),
    );
  }
}
