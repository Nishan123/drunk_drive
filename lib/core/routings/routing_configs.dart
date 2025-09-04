import 'package:drunk_drive/screens/history/history_details_screen.dart';
import 'package:drunk_drive/screens/home/home_screen.dart';
import 'package:drunk_drive/screens/landing_screen.dart';
import 'package:drunk_drive/screens/login_screen.dart';
import 'package:drunk_drive/screens/otp_screen.dart';
import 'package:go_router/go_router.dart';

class RoutingConfigs {
  RoutingConfigs();
  final GoRouter appRoute = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/landing",
        name: "landing",
        builder: (context, state) {
          return LandingScreen();
        },
      ),
      GoRoute(
        path: "/login",
        name: "login",
        builder: (context, state) {
          return LoginScreen();
        },
      ),

      GoRoute(
        path: "/otp",
        name: "otp",
        builder: (context, state) {
          return OtpScreen();
        },
      ),

      GoRoute(
        path: "/home",
        name: "home",
        builder: (context, state) {
          return HomeScreen();
        },
      ),
      GoRoute(
        path: "/",
        name: "historyDetails",
        builder: (context, state) {
          return HistoryDetailsScreen();
        },
      ),
    ],
  );
}
