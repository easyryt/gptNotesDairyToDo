import 'package:easyryt_ai_notes_ask_ai/screens/ask-ai/ask-ai-screen.dart';
import 'package:easyryt_ai_notes_ask_ai/screens/diary/diary-screen.dart';
import 'package:easyryt_ai_notes_ask_ai/screens/todo/todo-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: AppBar().preferredSize.height,
                        width: 100.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          children: [
                            Container(
                              width: 60.w,
                              padding: EdgeInsets.only(right: 2.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20.sp),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                style: GoogleFonts.poppins(fontSize: 16.sp),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  hintText: "Search",
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.5.h),
                      Container(
                        height: 20.h,
                        width: 100.w,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.5.w),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(100, 100, 111, 0.1),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 7),
                            ),
                          ],
                        ),
                      ),
                      // Quick Tools
                      SizedBox(height: 7.5.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "Quick Tools",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.5.h),
                      Container(
                        width: 100.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          children: [
                            quickTools("assets/notes.png", "Notes", 1),
                            SizedBox(width: 5.w),
                            quickTools("assets/todo.png", "To-do", 2),
                            SizedBox(width: 5.w),
                            quickTools("assets/diary.png", "Diary", 3),
                            SizedBox(width: 5.w),
                            quickTools("assets/subtitle.png", "Subtitle", 4),
                          ],
                        ),
                      ),
                      // Recents
                      SizedBox(height: 7.5.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "Recents",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.5.h),
                      Container(
                        height: 100 * 6,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                          ),
                          itemCount: 6, // Total number of containers
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.5.w),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.09),
                                    blurRadius: 1,
                                    spreadRadius: 0,
                                    offset: Offset(-2, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 2.w),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Quick Note",
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Icon(
                                          Icons.menu,
                                          size: 18.sp,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 100.w,
                child: InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    Get.to(() => const AskAiScreen());
                  },
                  child: const Center(
                    child: Image(
                      image: AssetImage("assets/ai.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget quickTools(String imageUrl, String title, int index) {
    return Expanded(
      child: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        onTap: () {
          if (index == 2) {
            Get.to(() => const TodoScreen());
          } else if (index == 3) {
            Get.to(() => const DiaryScreen());
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.5.w),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Image(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 2.5.w),
            Text(
              title,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
