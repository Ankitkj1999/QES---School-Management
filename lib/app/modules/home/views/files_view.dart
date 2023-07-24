import 'package:ces/app/modules/home/controllers/files_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class FilesView extends GetView<FilesController> {
  const FilesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2, // Number of tabs
          child: Container(
            // height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [topView, tabBar, tabView],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Container(
        padding: EdgeInsets.all(10),
        width: Get.width,
        height: Get.width * 0.3,
        decoration: BoxDecoration(

            // color: Color(0XFF473F97),
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.purpel_signup),
        )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                // padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppIcons.back_icon,
                    width: Get.width * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
            Expanded(
              flex: 12,
              child: Text(
                'Files',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width * 0.048,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      );

  Widget get tabBar => Container(
        padding: EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ],
          ),
          child: TabBar(
            // overlayColor: MaterialStateProperty.all(Colors.brown),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: Get.width * 0.048,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.30,
            ),
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0XFF473F97)),
            tabs: [
              Tab(
                text: 'Ebook',
              ),
              Tab(text: 'Video'),
            ],
          ),
        ),
      );

  Widget get tabView => Expanded(
        child: TabBarView(
          children: [
            // Content for Tab 1
            SingleChildScrollView(child: ebooks),
            // Content for Tab 2
            SingleChildScrollView(child: ebooks),
          ],
        ),
      );

  Widget get ebooks => Container(
        // color: Colors.red,
        // height: Get.height * 0.8,

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.ebookList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // width: Get.width * 0.7,
                    padding: EdgeInsets.only(left: 3),
                    margin: EdgeInsets.fromLTRB(5, 3, 5, 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      // color: Colors.green,
                      color: index % 2 == 0
                          ? Color(0xff473f97)
                          : Color(0xffd197ae),
                    ),
                    child: Container(
                      // width: Get.width * 0.7,
                      height: Get.width * 0.224,
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? Color(0xffFFECED)
                            : Color(0xffD1CFE5),
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.0,
                            blurRadius: 1,
                            offset: Offset(1, -1),
                          ),
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 2,
                            offset: Offset(0, 3),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(11),
                                      bottomLeft: Radius.circular(11))),
                              child: SizedBox(
                                height: Get.width * 0.20,
                                child: Center(
                                  child: Image.asset(AppIcons.ebook_icon),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(11)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Get.width * 0.5,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              controller.ebookList[index],
                                              overflow: TextOverflow
                                                  .fade, // Truncate and add ellipsis
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: Get.width * 0.053,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // IconButton(
                                    //   onPressed: () {
                                    //     Get.toNamed('/files');
                                    //   },
                                    //   icon: Icon(
                                    //     Icons.arrow_forward_ios_rounded,
                                    //     size: 15,
                                    //     weight: 800,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            bottomBG
          ],
        ),
      );

  Widget get bottomBG => Container(
        height: Get.width * 0.35,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.blue_bg),
          ),
        ),
      );
}
