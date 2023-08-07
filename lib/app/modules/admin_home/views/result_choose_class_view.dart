import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResultChooseClassView<ResultChooseClassController> extends GetView {
  const ResultChooseClassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultChooseClassView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResultChooseClassView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Widget get bodyView => Container(
        width: getMediaSize(311),
        height: getMediaSize(166),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 4), // Controls the shadow offset
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          // border: Border(
          //   top: BorderSide(color: Colors.red, width: 4),
          // ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: getMediaSize(280),
                    height: getMediaSize(19),
                    child: Text(
                      'First Terminal',
                      style: TextStyle(
                        color: Color(0xFF473F97),
                        fontSize: 15,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 278,
                    height: 54.97,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E9E9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getMediaSize(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'PUBLISH',
                        style: TextStyle(
                          color: Color(0xFF473F97),
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 0,
              top: 0.65,
              child: Container(
                width: getMediaSize(311),
                height: getMediaSize(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfffd366f),
                ),
              ),
            ),
          ],
        ),
      );
}
