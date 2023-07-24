import 'package:ces/app/modules/home/controllers/fee_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';
import '../../../../utils/styles.dart';

class FeeDetailsView extends GetView<FeeDetailsController> {
  const FeeDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [topView, detailElement],
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
                'Fee Details',
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

  Widget get detailElement => Container(
        padding: EdgeInsets.all(Get.width * getSize(8)), // color: Colors.red,
        // height: Get.height * 0.8,

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 3),
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: index % 2 == 0 ? Color(0xff473f97) : Color(0xffd197ae),
              ),
              child: Container(
                width: Get.width * getSize(333),
                height: Get.width * getSize(212),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // color: index % 2 == 0 ? Color(0xffFFECED) : Color(0xffD1CFE5),
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
                      flex: 6,
                      child: Container(
                        // padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: Get.width * getSize(15),
                                  horizontal: Get.width * getSize(15)),
                              child: Table(
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Reciept Number', style: col1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('#98761', style: col2)
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Session', style: col1),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('2022-23', style: col2)
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Month', style: col1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('October', style: col2)
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Due Date	', style: col1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('10 Oct 20', style: col2)
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Total Pending Amount',
                                                style: col1)
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.width * getSize(8)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('₹999', style: col2)
                                          ]),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width,
                              height: Get.width * getSize(33),
                              decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? Color(0xff473f97)
                                    : Color(0xffd197ae),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      index % 2 == 0 ? 'PAY NOW' : 'DOWNLOAD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width * getSize(10),
                                    ),
                                    Image.asset(
                                      index % 2 == 0
                                          ? AppIcons.pay_icon
                                          : AppIcons.download_icon,
                                      height: Get.width * getSize(15),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
}
