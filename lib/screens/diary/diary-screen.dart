import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: AppBar().preferredSize.height,
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.undo,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                        SizedBox(width: 2.5.w),
                        Icon(
                          Icons.redo,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              TextFormField(
                maxLines: 1,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: "Title",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  minLines: 50,
                  maxLines: 100,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: "Note Here..",
                  ),
                ),
              ),
              Container(
                height: AppBar().preferredSize.height,
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.w),
                    topRight: Radius.circular(5.w),
                  ),
                ),
                child: bottomMenus(),
                // child: AppFlowyEditor(
                //   editorState: EditorState.blank(),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.text_fields,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.check_box_outlined,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.mic_rounded,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.draw_outlined,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.add_photo_alternate_outlined,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.emoji_emotions_outlined,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.format_paint,
          color: Colors.black,
          size: 20.sp,
        ),
        Icon(
          Icons.menu,
          color: Colors.black,
          size: 20.sp,
        ),
      ],
    );
  }
}
