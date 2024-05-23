import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("講師清單"),
      leading: const Icon(Icons.arrow_back_ios_new),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
