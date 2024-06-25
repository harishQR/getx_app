import 'package:get/get.dart';

class getx_C extends GetxController{
  // obs means observable the changes and widgets are updated based on changes.
  var count = 0.obs;
  void increment(){
    count++;
  }
  void decrement(){
    count--;
  }
}