import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/profile_controller.dart';

class AdminProfileView extends GetView<ProfileController> {
  const AdminProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: customDrawer,
        // appBar: PreferredSize(
        //     child: customAppBar,
        //     preferredSize: Size.fromHeight(getMediaSize(150))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // appbar
              customAppBar,

              // detail view
              adminDetailView,
              // edit button
              logoutButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget get customDrawer => Drawer(
      backgroundColor: Color(0xff473f97),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF615b97),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: getMediaSize(12), vertical: getMediaSize(12)),
            child: Container(
              height: getMediaSize(75),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: getMediaSize(51),
                    height: getMediaSize(51),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.man_profile),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getMediaSize(10),
                  ),
                  Container(
                    // color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Prajesh Shakya',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // home
          ListTile(
            leading: Image.asset(
              AppIcons.admin_pop,
              height: Get.width * 0.066,
            ),
            title: const Text(
              'Profile Of Publication ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          SizedBox(
            height: Get.width * getSize(10),
          ),
          // profile
          ListTile(
            leading: Image.asset(
              AppIcons.admin_emg_cont,
              height: Get.width * 0.066,
            ),
            title: const Text(
              'Emergency Contact',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              Get.toNamed('/admin-support');
            },
          ),
          SizedBox(
            height: Get.width * getSize(10),
          ),
          // attendence
          ListTile(
            leading: Image.asset(
              AppIcons.admin_setting,
              height: Get.width * 0.066,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          SizedBox(
            height: Get.width * getSize(10),
          ),
          // about us
          ListTile(
            leading: Image.asset(
              AppIcons.admin_logout,
              height: Get.width * 0.066,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ));
  // App Bar
  Widget get customAppBar => Stack(
        children: [
          Column(
            children: [
              Container(
                width: Get.width,
                height: getMediaSize(150),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.admin_home_cr),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Container(
                // color: const Color.fromARGB(255, 255, 214, 211),
                height: getMediaSize(90),
              )
            ],
          ),
          Positioned(
              top: getMediaSize(100),
              left: getMediaSize(120),
              child: Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff473f9f),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    height: getMediaSize(140),
                    width: getMediaSize(140),
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: getMediaSize(135),
                      width: getMediaSize(135),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.man_profile))),
                    ),
                  ),
                );
              }))
        ],
      );

  // Admin Detail View
  Widget get adminDetailView {
    var sizedBox15 = SizedBox(
      height: getMediaSize(15),
    );
    return Container(
      margin: EdgeInsets.only(top: getMediaSize(50)),
      padding: EdgeInsets.symmetric(
          horizontal: getMediaSize(30), vertical: getMediaSize(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Admin Id
        Row(
          children: [
            Text(
              'ID: 165653',
              style: TextStyle(
                color: Color(0xFF0C46C4),
                fontSize: getMediaSize(24),
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getMediaSize(29),
        ),
        // Full name
        SizedBox(
          width: getMediaSize(323),
          height: getMediaSize(47),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Full Name:\n',
                  style: TextStyle(
                    color: Color(0xFF0C46C4),
                    fontSize: getMediaSize(15),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Prajesh Shakya',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getMediaSize(18),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        sizedBox15,
        // Subject
        SizedBox(
          width: getMediaSize(323),
          height: getMediaSize(47),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Subject:\n',
                  style: TextStyle(
                    color: Color(0xFF0C46C4),
                    fontSize: getMediaSize(15),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Mathmatics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getMediaSize(18),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        sizedBox15,
        // Id
        SizedBox(
          width: getMediaSize(323),
          height: getMediaSize(47),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'ID:\n',
                  style: TextStyle(
                    color: Color(0xFF0C46C4),
                    fontSize: getMediaSize(15),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '#5221',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getMediaSize(18),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        sizedBox15,
        // Phone number
        SizedBox(
          width: getMediaSize(323),
          height: getMediaSize(47),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Phone Number:\n',
                  style: TextStyle(
                    color: Color(0xFF0C46C4),
                    fontSize: getMediaSize(15),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '+91 2222 222 222',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getMediaSize(18),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        sizedBox15,
        // Address
        SizedBox(
          width: getMediaSize(323),
          height: getMediaSize(47),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Address:\n',
                  style: TextStyle(
                    color: Color(0xFF0C46C4),
                    fontSize: getMediaSize(15),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '84/8 B Ashok Vihar Delhi 110052',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getMediaSize(18),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getMediaSize(10),
        ),
      ]),
    );
  }

  // Edit Button
  Widget get logoutButton => GestureDetector(
        onTap: () {
          Get.snackbar('Contact Admind', 'To edit your profile!',
              snackPosition: SnackPosition.BOTTOM);
        },
        child: Container(
          margin: EdgeInsets.only(top: getMediaSize(50)),
          child: Column(
            children: [
              Container(
                height: getMediaSize(60),
                width: getMediaSize(300),
                decoration: BoxDecoration(
                    color: Color(0xfffd3667),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Request Edit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getMediaSize(20),
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(10),
              ),
            ],
          ),
        ),
      );
}
