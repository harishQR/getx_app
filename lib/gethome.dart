import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_app/decrement_getx.dart';
import 'package:getx_app/services/getx_controller.dart';
class gethome extends StatefulWidget {
  const gethome({super.key});
  @override
  State<gethome> createState() => _gethomeState();
}

class _gethomeState extends State<gethome> {
 final Getx_Controller =Get.put(getx_C());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       title: Text("Getx Increment",style: TextStyle(fontSize: 40),),
       centerTitle:true,
     ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
             // Obx is stands for observering widget from observable variables i.e is obs .
             child:  Center(child: Obx(()=> Text("${Getx_Controller.count}",style: TextStyle(fontSize: 100),))),

            ),
            SizedBox(height: 20,),
            SizedBox(height: 20,),
            Container(
              height: 70,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.green,

                ) ,
                onPressed: (){
                  Getx_Controller.increment();
                  }, child: Text("click + ",style: TextStyle(fontSize: 40,color: Colors.black),),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 70,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.cyanAccent,
                ),

                onPressed: (){
                  Getx_Controller.decrement();
                  }, child: Text("click - ",style: TextStyle(fontSize: 40,color: Colors.black),),
              ),
            ),
            SizedBox(height: 30,),

            Container(
              height: 70,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.orangeAccent,
                ),

                onPressed: (){
                  Get.to(decrement_getx());
                }, child: Text("Next page",style: TextStyle(fontSize: 40,color: Colors.black),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
