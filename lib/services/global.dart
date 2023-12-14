import 'package:flutter/material.dart';
import 'package:easyryt_ai_notes_ask_ai/services/storage_services.dart';

class Global {
  static late StorageServices storageServices;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    storageServices = await StorageServices().init();
  }
}
