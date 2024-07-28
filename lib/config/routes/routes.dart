import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/book_ambulance.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/login.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/profile.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/signUp.dart';
import 'package:flutter/material.dart';

import '../../features/presentation/pages/book_case.dart';
import '../../features/presentation/pages/records.dart';




class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {

      case '/login':
        return _materialRoute(Login());

      case '/signUp':
        return _materialRoute(SignUp());

      case '/book ambulance':
        return _materialRoute(BookAmbulance());

      case '/profile':
        return _materialRoute(Profile());

      case '/records':
        return _materialRoute(Records());

      case '/book case':
        return _materialRoute(BookCase());  // Add your new route here.


      default:
        return _materialRoute(Login()); // Add your new route here.
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
