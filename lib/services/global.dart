import 'package:easyryt_ai_notes_ask_ai/services/sqflite_services.dart';
import 'package:flutter/material.dart';
import 'package:easyryt_ai_notes_ask_ai/services/storage_services.dart';

class Global {
  static late StorageServices storageServices;
  static late DatabaseHelper notesDatabaseHelper;
  static late DatabaseHelper todoDatabaseHelper;
  static late DatabaseHelper diaryDatabaseHelper;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    storageServices = await StorageServices().init();
    notesDatabaseHelper = await DatabaseHelper().init("notes");
    todoDatabaseHelper = await DatabaseHelper().init("todos");
    diaryDatabaseHelper = await DatabaseHelper().init("diaries");
  }
}
