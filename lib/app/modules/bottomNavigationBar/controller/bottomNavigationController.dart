import 'package:get/get.dart';

class BottomNaveController extends GetxController{

  var selectedIndex=0.obs;
  var isSwitched = false.obs;

  void changeTabIndex(int index){
    selectedIndex.value=index;
  }

  void switchValue(int value) {
    isSwitched.value = !isSwitched.value;
  }
}