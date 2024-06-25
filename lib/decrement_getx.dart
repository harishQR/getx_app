import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services/getx_controller.dart';
class decrement_getx extends StatefulWidget {
  const decrement_getx({super.key});

  @override
  State<decrement_getx> createState() => _decrement_getxState();
}

class _decrement_getxState extends State<decrement_getx> {
final GetxController = Get.put(getx_C());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Getx Decrement",style: TextStyle(fontSize: 40),),
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
              child:
              Center(child: Text("${GetxController.count}",style: TextStyle(fontSize: 100),)),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 20,),
            Container(
              height: 70,
              width: 200,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.orangeAccent,
                ),

                onPressed: (){
                  setState(() {
                    GetxController.increment();

                  });
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
                  backgroundColor: Colors.cyan,
                ),

                onPressed: (){
                  setState(() {
                    GetxController.decrement();

                  });
                  }, child: Text("click - ",style: TextStyle(fontSize: 40,color: Colors.black),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
