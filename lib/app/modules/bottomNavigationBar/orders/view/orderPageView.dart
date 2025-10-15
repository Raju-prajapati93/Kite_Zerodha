import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kite/Widget/appColor.dart';
import 'package:kite/Widget/appStyle.dart';

import '../../watchlist/view/overveiw/overPageView.dart';

class Orderpageview extends StatelessWidget {
  const Orderpageview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          actions: [
            Icon(Icons.shopping_basket_outlined, color: AppColor.blackColor,size: 30,),
            InkWell(
              onTap: () {
                Get.to(Overpageview());
              },
              child: Icon(Icons.keyboard_arrow_down, size: 30),
            ),
          ],
          actionsPadding: EdgeInsets.only(right: 10),
          leadingWidth: 180,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NIFTY BANK",
                  style: AppStyle.niftytext,
                ),
                Row(
                  children: [
                    Text(
                      "28,285.30",
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    ),
                    Text(
                      "+103.15(+.41%)",
                      style: AppStyle.bankytext,
                    ),
                  ],
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NIFTY 50",
                  style: AppStyle.niftytext,
                ),
                Row(
                  children: [
                    Text(
                      "28,285.30",
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    ),
                    Text(
                      "+103.15(+.41%)",
                      style: AppStyle.bankytext,
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(bottom: 17),
            indicatorColor: Colors.blue.shade900,
            tabs: [
              Text("Open", style: AppStyle.openHeding),
              Text(
                "Executed",
                style: AppStyle.openHeding,
              ),
              Text("GTT", style: AppStyle.openHeding),
              Text(
                "Baskets",
                style: AppStyle.openHeding,
              ),
              Text("SIPs", style: AppStyle.openHeding),
            ],
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search,size: 30,color: Colors.grey,),
                          SizedBox(width: 7,),
                          Icon(Icons.filter_list,size: 30,color: Colors.grey,),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.change_circle_rounded,size: 30,color: Colors.blue.shade700,),
                          SizedBox(width: 7,),
                          Text("Tradebook",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ),
            Positioned(
              top: 250,
              left: 70,
              child: SizedBox(
                width: 300,
                height: 300,
               child: Column(
                 children: [
                   Image.asset("assets/images/download (1).png",fit: BoxFit.cover),
                   Text("No peding orders",style:AppStyle.mediumHeding),
                   Text("place an orders from your watchlist",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,),)
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
