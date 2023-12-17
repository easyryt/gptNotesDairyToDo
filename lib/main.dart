import 'package:easyryt_ai_notes_ask_ai/controllers/todo-controller.dart';
import 'package:easyryt_ai_notes_ask_ai/screens/intro/splash-screen.dart';
import 'package:easyryt_ai_notes_ask_ai/services/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, type) {
      return GetMaterialApp(
        title: 'Easyryt: AI Notes, Ask AI Chat to Write',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      );
    });
  }
}
