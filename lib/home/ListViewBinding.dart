import 'package:get/get.dart';
import 'package:test_app/home/ListViewController.dart';

class ListViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewController>(
      () => ListViewController(),
    );
  }
}
