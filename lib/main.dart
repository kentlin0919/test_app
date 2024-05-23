import 'package:flutter/material.dart';
import 'package:test_app/home/ListView.dart';
import 'package:get/get.dart';
import 'package:test_app/route/appPage.dart';

void main() {
  runApp(
    GetMaterialApp.router(
      title: "Application",
      initialBinding: BindingsBuilder(
        () {},
      ),
      debugShowCheckedModeBanner: false,
      getPages: appClass.routes,
      // theme: ThemeData.dark().copyWith(
      //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //       unselectedItemColor: AppColor.primary300,
      //       selectedItemColor: AppColor.white,
      //       backgroundColor: AppColor.primary500,
      //     ),
      //     // brightness: Brightness.dark,
      //     scaffoldBackgroundColor: AppColor.brown900,
      //     primaryColor: AppColor.white,
      //     colorScheme: ColorScheme.dark(
      //       primary: AppColor.white,
      //     )),
      // routeInformationParser: GetInformationParser(
      //     // initialRoute: Routes.HOME,
      //     ),
      // routerDelegate: GetDelegate(
      //   backButtonPopMode: PopMode.History,
      //   preventDuplicateHandlingMode:
      //       PreventDuplicateHandlingMode.ReorderRoutes,
      // ),
    ),
  );
}
