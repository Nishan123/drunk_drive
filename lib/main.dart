import 'package:drunk_drive/core/routings/routing_configs.dart';
import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   final RoutingConfigs routingConfigs =RoutingConfigs();
    return MaterialApp.router(
      routeInformationParser: routingConfigs.appRoute.routeInformationParser,
      routeInformationProvider: routingConfigs.appRoute.routeInformationProvider,
      routerDelegate: routingConfigs.appRoute.routerDelegate,
      theme: ThemeData(
        fontFamily: "Satoshi",
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTextStyles.h3.copyWith(
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
