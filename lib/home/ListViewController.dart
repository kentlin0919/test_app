import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewController extends GetxController {
  List<Map<String, dynamic>> text = [
    {
      "name": "test1",
      "Introduction": "about test1",
      "class": [
        {"className": "程式設計", "time": "每週一,10:00~12:00"},
        {"className": "數學", "time": "每週三,14:00~16:00"},
        {"className": "物理", "time": "每週五,08:00~10:00"}
      ]
    },
    {
      "name": "test2",
      "Introduction": "about test2",
      "class": [
        {"className": "化學", "time": "每週二,10:00~12:00"},
        {"className": "生物", "time": "每週四,13:00~15:00"},
        {"className": "歷史", "time": "每週六,09:00~11:00"}
      ]
    },
    {
      "name": "test3",
      "Introduction": "about test3",
      "class": [
        {"className": "地理", "time": "每週一,10:00~12:00"},
        {"className": "美術", "time": "每週三,14:00~16:00"},
        {"className": "音樂", "time": "每週五,08:00~10:00"}
      ]
    },
    {
      "name": "test4",
      "Introduction": "about test4",
      "class": [
        {"className": "體育", "time": "每週二,10:00~12:00"},
        {"className": "電腦科學", "time": "每週四,13:00~15:00"},
        {"className": "哲學", "time": "每週六,09:00~11:00"}
      ]
    },
    {
      "name": "test5",
      "Introduction": "about test5",
      "class": [
        {"className": "經濟學", "time": "每週一,10:00~12:00"},
        {"className": "統計學", "time": "每週三,14:00~16:00"},
        {"className": "管理學", "time": "每週五,08:00~10:00"}
      ]
    },
    {
      "name": "test6",
      "Introduction": "about test6",
      "class": [
        {"className": "法律", "time": "每週二,10:00~12:00"},
        {"className": "政治學", "time": "每週四,13:00~15:00"},
        {"className": "社會學", "time": "每週六,09:00~11:00"}
      ]
    },
    {
      "name": "test7",
      "Introduction": "about test7",
      "class": [
        {"className": "心理學", "time": "每週一,10:00~12:00"},
        {"className": "教育學", "time": "每週三,14:00~16:00"},
        {"className": "語言學", "time": "每週五,08:00~10:00"}
      ]
    },
    {
      "name": "test8",
      "Introduction": "about test8",
      "class": [
        {"className": "人工智慧", "time": "每週二,10:00~12:00"},
        {"className": "機器學習", "time": "每週四,13:00~15:00"},
        {"className": "深度學習", "time": "每週六,09:00~11:00"}
      ]
    },
    {
      "name": "test9",
      "Introduction": "about test9",
      "class": [
        {"className": "資料科學", "time": "每週一,10:00~12:00"},
        {"className": "數據分析", "time": "每週三,14:00~16:00"},
        {"className": "雲端計算", "time": "每週五,08:00~10:00"}
      ]
    },
    {
      "name": "test10",
      "Introduction": "about test10",
      "class": [
        {"className": "區塊鏈", "time": "每週二,10:00~12:00"},
        {"className": "金融科技", "time": "每週四,13:00~15:00"},
        {"className": "網絡安全", "time": "每週六,09:00~11:00"}
      ]
    }
  ].obs;

  var booltest = false.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
