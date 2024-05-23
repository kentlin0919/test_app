import 'package:flutter/material.dart';
import 'package:test_app/route/appRoute.dart';
import 'package:get/get.dart';
import 'package:test_app/home/ListView.dart';

import 'package:test_app/home/ListViewBinding.dart';

class appClass {
  static final routes = [
    GetPage(
      name: '/',
      page: () => listView(),
      binding: ListViewBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
    )
  ];
}
