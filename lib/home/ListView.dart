import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/home/ListViewController.dart';
import 'package:test_app/home/widget/AppBarWidget.dart';
import 'package:test_app/home/widget/ListCardView.dart';

class listView extends GetView<ListViewController> {
  listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(),
      body: Obx(() => Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 330,
                    child: Center(
                      child: ListView.builder(
                        itemCount: controller.text.length,
                        itemBuilder: (BuildContext context, index) {
                          final data = controller.text[index];
                          return ListCardView(
                            data: data,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
