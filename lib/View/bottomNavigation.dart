import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kite/app/modules/bottomNavigationBar/controller/bottomNavigationController.dart';
import '../app/modules/bottomNavigationBar/HTC234/view/htc234PageView.dart';
import '../app/modules/bottomNavigationBar/bids/view/bidsPageView.dart';
import '../app/modules/bottomNavigationBar/orders/view/orderPageView.dart';
import '../app/modules/bottomNavigationBar/portfolio/view/portfolioPageView.dart';
import '../app/modules/bottomNavigationBar/watchlist/view/watchlistPageView.dart';

class MainScreen extends StatelessWidget {
  final BottomNaveController controller=Get.put(BottomNaveController());

  final List<Widget> pages=[
    Watchlistpageview(),
    Orderpageview(),
    Portfoliopageview(),
    Bidspageview(),
    Htc234pageview(),

  ];
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body: pages[controller.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.blue.shade900,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
onTap: controller.changeTabIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_sharp,size: 30,),label: "Watchlist"),
        BottomNavigationBarItem(icon: Icon(Icons.book_outlined,size: 30,),label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.important_devices_sharp,size: 30,),label: "portfolio"),
        BottomNavigationBarItem(icon: Icon(Icons.broken_image_outlined,size: 30,),label: "Bids"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,size: 30,),label: "HTC234"),
      ]),
    ));
  }
}
