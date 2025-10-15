import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kite/Widget/appColor.dart';
import 'package:kite/Widget/appStyle.dart';

import 'overveiw/overPageView.dart';

class Watchlistpageview extends StatelessWidget {
  Watchlistpageview({super.key});

  final List<String> item = [
    "HDFCBANK",
    "NIFY",
    "TCS",
    "ONGC",
    "HINDUNILVR",
    "GOLDBEES",
  ];
  final List<String> item2 = [
    "980.30",
    "1514.34",
    "3028.40",
    "246.36",
    "2524.30",
    "100.67",
  ];
  final List<String> item3 = ["BSC", "NAC", "BSE", "NSC", "BSE", "NSC"];
  final List<String> item4 = [
    "+3.75(+0.38%)",
    "+5.46(+0.38%)",
    "-0.84(+0.38%)",
    "+9.72(+0.38%)",
    "-0.78(+0.38%)",
    "+7.24(+0.38%)",
  ];
  // F
  // f
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.BackgroundColor,
              actions: [
                Icon(
                  Icons.shopping_basket_outlined,
                  color: AppColor.blackColor,
                  size: 30,
                ),
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
                    Text("NIFTY BANK", style: AppStyle.niftytext),
                    Row(
                      children: [
                        Text("28,285.30", style: AppStyle.captiontext),
                        Text("+103.15(+.41%)", style: AppStyle.bankytext),
                      ],
                    ),
                  ],
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("NIFTY 50", style: AppStyle.niftytext),
                    Row(
                      children: [
                        Text("28,285.30", style: AppStyle.captiontext),
                        Text("+103.15(+.41%)", style: AppStyle.bankytext),
                      ],
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                padding: EdgeInsets.only(bottom: 17),
                indicatorColor: Colors.blue.shade900,
                tabs: [
                  Text("Watchlist 1", style: AppStyle.watchlist),
                  Text("Watchlist 2", style: AppStyle.watchlist),
                  Text("Watchlist 3", style: AppStyle.watchlist),
                  Text("Watchlist 4", style: AppStyle.watchlist),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 47),
              child: ListView.builder(
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item[index]),
                            Text(item2[index], style: AppStyle.captiontext),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item3[index], style: AppStyle.mediumtext),
                            Text(item4[index]),
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.14,
            right: 0,
            left: 0,
            child: Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: AppColor.greycolor,
                  ),
                  hintText: " Search & add",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,

                    children: [Text("6/100",style: TextStyle( color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,),),
                      SizedBox(width: 7,),
                      Icon(Icons.filter_list,size: 30,
                        color: AppColor.greycolor,)],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
