import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kite/Widget/appColor.dart';
import 'package:kite/app/modules/bottomNavigationBar/controller/bottomNavigationController.dart';
import '../../../../../Widget/appStyle.dart';
import '../../watchlist/view/overveiw/overPageView.dart';

class Htc234pageview extends StatelessWidget {
  final BottomNaveController controller = Get.put(BottomNaveController());

  final List<String> lists = [
    "Funds",
    "App code",
    "Profile",
    "Settings",
    "Connected app",
    "Logout",
  ];

  final List<IconData> icons = [
    Icons.currency_rupee,
    Icons.lock,
    Icons.person_outline_outlined,
    Icons.settings,
    Icons.connected_tv,
    Icons.login,
  ];

  final List<String> consoleItems = [
    "Portfolio",
    "Tradebook",
    "P&L",
    "Tax P&L",
    "Gift stocks",
    "Family",
    "Downloads"
  ];

  Htc234pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade200,
            actions: [
              Icon(Icons.shopping_basket_outlined,
                  color: AppColor.blackColor, size: 30),
              InkWell(
                onTap: () {
                  Get.to(Overpageview());
                },
                child: const Icon(Icons.keyboard_arrow_down, size: 30),
              ),
            ],
            actionsPadding: const EdgeInsets.only(right: 10),
            leadingWidth: 180,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
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
              padding: const EdgeInsets.only(left: 10),
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Raju Prajapati", style: AppStyle.mediumHeding),
                      const Icon(
                        Icons.notifications_active,
                        size: 28,
                        color: AppColor.blackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 150),
            margin: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Account", style: AppStyle.normalText),
                  ),
                ),
                const SizedBox(height: 15),
                const Divider(),
                
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: Icon(icons[index], color: Colors.grey.shade700),
                        leading: Text(
                          lists[index],
                          style: AppStyle.liststext
                              .copyWith(color: Colors.grey.shade700),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: lists.length,
                  ),
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Console", style: AppStyle.normalText),
                      Icon(Icons.change_circle_rounded,size: 30,color:Colors.blue.shade900,)
                    ],
                  ),
                ),
                
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Wrap(
                    spacing: 25,
                    runSpacing: 2,
                    alignment: WrapAlignment.center,
                    children: consoleItems.map((item) {
                      return Text(
                        item,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: Get.height * 0.13,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: Get.height,
              height: 178,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "HTC234",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            const Text(
                              "ht1562882@gmail.com",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue.shade100,
                          child: Text(
                            "HT",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Obx(
                          () => Row(
                        children: [
                          Text("Privacy mode", style: AppStyle.normalText),
                          const SizedBox(width: 10),
                          Switch(
                            inactiveTrackColor: Colors.grey.shade300,
                            activeColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                            value: controller.isSwitched.value,
                            onChanged: (value) {
                              controller.isSwitched.value = value;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
