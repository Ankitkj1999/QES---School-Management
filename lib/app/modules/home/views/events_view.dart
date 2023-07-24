import 'package:ces/app/modules/home/controllers/events_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class EventsView extends GetView<EventsController> {
  const EventsView({Key? key}) : super(key: key);
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
              children: [
                topView,
                eventElement,
              ],
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
                'Event & Programs',
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

  Widget get eventElement => Container(
        padding: EdgeInsets.all(10),
        // color: Colors.red,
        // height: Get.height * 0.8,

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 3),
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: index % 2 == 0 ? Color(0xff473f97) : Color(0xffd197ae),
              ),
              child: Container(
                width: Get.width * 0.8,
                height: Get.width * 0.296,
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
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                bottomLeft: Radius.circular(11))),
                        child: SizedBox(
                          height: Get.width * 0.16,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              width: Get.width * getSize(61),
                              height: Get.width * getSize(61),
                              decoration: ShapeDecoration(
                                color: index % 2 == 0
                                    ? Color(0xff473f97)
                                    : Color(0xffd197ae),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.17),
                                ),
                              ),
                              child: Container(
                                decoration: ShapeDecoration(
                                  // color: Colors.green,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1630304565761-d6f8d5a0facd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y3V0ZSUyMGJhYnl8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          getMediaSize(10),
                          getMediaSize(15),
                          getMediaSize(10),
                          getMediaSize(5),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width * 0.5,
                              child: Text(
                                controller.titleList[index],
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontSize: Get.width * getSize(14),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  // textDecoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: getMediaSize(5),
                            // ),
                            SizedBox(
                              width: Get.width * getSize(226),
                              height: Get.width * getSize(46),
                              child: Text(
                                controller.descriptionList[index],
                                style: TextStyle(
                                  color: Color(0xFF777777),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getMediaSize(5),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '06 Jan 21, 09:00 AM',
                                  style: TextStyle(
                                    color: Color(0xFFFFB5B6),
                                    fontSize: getMediaSize(10),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
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
