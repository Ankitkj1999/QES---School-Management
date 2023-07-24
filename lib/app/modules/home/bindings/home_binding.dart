import 'package:get/get.dart';

import 'package:ces/app/modules/home/controllers/ask_doubt_controller.dart';
import 'package:ces/app/modules/home/controllers/assignme_controller.dart';
import 'package:ces/app/modules/home/controllers/attendence_controller.dart';
import 'package:ces/app/modules/home/controllers/change_password_controller.dart';
import 'package:ces/app/modules/home/controllers/chapters_controller.dart';
import 'package:ces/app/modules/home/controllers/events_controller.dart';
import 'package:ces/app/modules/home/controllers/exam_list_controller.dart';
import 'package:ces/app/modules/home/controllers/fee_details_controller.dart';
import 'package:ces/app/modules/home/controllers/files_controller.dart';
import 'package:ces/app/modules/home/controllers/live_class_controller.dart';
import 'package:ces/app/modules/home/controllers/notification_controller.dart';
import 'package:ces/app/modules/home/controllers/profile_controller.dart';
import 'package:ces/app/modules/home/controllers/select_class_controller.dart';
import 'package:ces/app/modules/home/controllers/subject_controller.dart';
import 'package:ces/app/modules/home/controllers/suggestions_controller.dart';
import 'package:ces/app/modules/home/controllers/support_controller.dart';
import 'package:ces/app/modules/home/controllers/syllabus_controller.dart';
import 'package:ces/app/modules/home/controllers/timetale_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AskDoubtController>(
      () => AskDoubtController(),
    );
    Get.lazyPut<FeeDetailsController>(
      () => FeeDetailsController(),
    );
    Get.lazyPut<EventsController>(
      () => EventsController(),
    );
    Get.lazyPut<LiveClassController>(
      () => LiveClassController(),
    );
    Get.lazyPut<AttendenceController>(
      () => AttendenceController(),
    );
    Get.lazyPut<TimetaleController>(
      () => TimetaleController(),
    );
    Get.lazyPut<FilesController>(
      () => FilesController(),
    );
    Get.lazyPut<ChaptersController>(
      () => ChaptersController(),
    );
    Get.lazyPut<SubjectController>(
      () => SubjectController(),
    );
    Get.lazyPut<ExamListController>(
      () => ExamListController(),
    );
    Get.lazyPut<SyllabusController>(
      () => SyllabusController(),
    );
    Get.lazyPut<AssignmeController>(
      () => AssignmeController(),
    );
    Get.lazyPut<SelectClassController>(
      () => SelectClassController(),
    );
    Get.lazyPut<SuggestionsController>(
      () => SuggestionsController(),
    );
    Get.lazyPut<SupportController>(
      () => SupportController(),
    );
    Get.lazyPut<NotificationController>(
      () => NotificationController(),
    );
    Get.lazyPut<ChangePasswordController>(
      () => ChangePasswordController(),
    );

    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
