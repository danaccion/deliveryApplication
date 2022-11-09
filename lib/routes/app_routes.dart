import 'package:dan_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:dan_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:dan_s_application3/presentation/registration_screen/registration_screen.dart';
import 'package:dan_s_application3/presentation/registration_screen/binding/registration_binding.dart';
import 'package:dan_s_application3/presentation/login_screen/login_screen.dart';
import 'package:dan_s_application3/presentation/login_screen/binding/login_binding.dart';
import 'package:dan_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:dan_s_application3/presentation/profile_screen/binding/profile_binding.dart';
import 'package:dan_s_application3/presentation/vehicle_screen/vehicle_screen.dart';
import 'package:dan_s_application3/presentation/vehicle_screen/binding/vehicle_binding.dart';
import 'package:dan_s_application3/presentation/delivery_information_screen/delivery_information_screen.dart';
import 'package:dan_s_application3/presentation/delivery_information_screen/binding/delivery_information_binding.dart';
import 'package:dan_s_application3/presentation/map_information_screen/map_information_screen.dart';
import 'package:dan_s_application3/presentation/map_information_screen/binding/map_information_binding.dart';
import 'package:dan_s_application3/presentation/delivery_information_one_screen/delivery_information_one_screen.dart';
import 'package:dan_s_application3/presentation/delivery_information_one_screen/binding/delivery_information_one_binding.dart';
import 'package:dan_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dan_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String registrationScreen = '/registration_screen';

  static String loginScreen = '/login_screen';

  static String profileScreen = '/profile_screen';

  static String vehicleScreen = '/vehicle_screen';

  static String deliveryInformationScreen = '/delivery_information_screen';

  static String mapInformationScreen = '/map_information_screen';

  static String deliveryInformationOneScreen =
      '/delivery_information_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: vehicleScreen,
      page: () => VehicleScreen(),
      bindings: [
        VehicleBinding(),
      ],
    ),
    GetPage(
      name: deliveryInformationScreen,
      page: () => DeliveryInformationScreen(),
      bindings: [
        DeliveryInformationBinding(),
      ],
    ),
    GetPage(
      name: mapInformationScreen,
      page: () => MapInformationScreen(),
      bindings: [
        MapInformationBinding(),
      ],
    ),
    GetPage(
      name: deliveryInformationOneScreen,
      page: () => DeliveryInformationOneScreen(),
      bindings: [
        DeliveryInformationOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
