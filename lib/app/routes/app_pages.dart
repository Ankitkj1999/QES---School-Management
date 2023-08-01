import 'package:ces/app/modules/admin_home/views/admin_profile_view.dart';
import 'package:get/get.dart';

import '../modules/admin_home/bindings/admin_home_binding.dart';
import '../modules/admin_home/views/admin_home_view.dart';
import '../modules/chat_list/bindings/chat_list_binding.dart';
import '../modules/chat_list/views/chat_list_view.dart';
import '../modules/chat_list/views/chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/ask_doubt_view.dart';
import '../modules/home/views/assignments_view.dart';
import '../modules/home/views/attendence_view.dart';
import '../modules/home/views/change_password_view.dart';
import '../modules/home/views/chapters_view.dart';
import '../modules/home/views/events_view.dart';
import '../modules/home/views/exam_list_view.dart';
import '../modules/home/views/fee_details_view.dart';
import '../modules/home/views/files_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/live_class_view.dart';
import '../modules/home/views/notification_view.dart';
import '../modules/home/views/profile_view.dart';
import '../modules/home/views/select_class_view.dart';
import '../modules/home/views/subject_view.dart';
import '../modules/home/views/suggestions_view.dart';
import '../modules/home/views/support_view.dart';
import '../modules/home/views/syllabus_view.dart';
import '../modules/home/views/timetable_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/welcome_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/pending_view.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ADMIN_HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
      // popGesture: false,
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.PENDING,
      page: () => const PendingView(),
      binding: SignupBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangePasswordView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => const SupportView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SUGGESTIONS,
      page: () => SuggestionsView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SELECTCLASS,
      page: () => const SelectClassView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.ASSIGNMENTS,
      page: () => const AssignmentsView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SYLLABUS,
      page: () => const SyllabusView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.EXAMLIST,
      page: () => const ExamListView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SUBJECT,
      page: () => const SubjectView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.CHAPTER,
      page: () => const ChaptersView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.FILES,
      page: () => const FilesView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.TIMETABLE,
      page: () => const TimetableView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.ATTENDENCE,
      page: () => const AttendenceView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.LIVECLASS,
      page: () => const LiveClassView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
        name: _Paths.FEEDETAILS,
        page: () => const FeeDetailsView(),
        binding: HomeBinding(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: _Paths.EVENTS,
        page: () => const EventsView(),
        binding: HomeBinding(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: _Paths.ASK_DOUBT,
        page: () => const AskDoubtView(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
      name: _Paths.CHAT_LIST,
      page: () => const ChatListView(),
      binding: ChatListBinding(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
        name: _Paths.CHAT,
        page: () => const ChatView(),
        binding: ChatListBinding(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.rightToLeftWithFade),
    GetPage(
      name: _Paths.ADMIN_HOME,
      page: () => const AdminHomeView(),
      binding: AdminHomeBinding(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
        name: _Paths.ADMIN_PROFILE,
        page: () => const AdminProfileView(),
        binding: AdminHomeBinding(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.rightToLeftWithFade),
  ];
}
