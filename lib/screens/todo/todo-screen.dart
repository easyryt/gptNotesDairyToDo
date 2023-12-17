import 'package:easyryt_ai_notes_ask_ai/controllers/todo-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List listData = ["Playing", "Eating", "Sleeping", " "];

  final TodoController _todoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          height: 100.h,
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppBar().preferredSize.height,
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        SizedBox(width: 2.5.w),
                        Text(
                          "Title",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.timer,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) {
                  return singleTodoTile(listData[index]);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTodoTile(String title) {
    return title == " "
        ? InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return reminderModal();
                },
              );
            },
            child: Container(
              height: 50,
              width: 100.w,
              margin: EdgeInsets.only(top: 2.5.h),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 25,
                    spreadRadius: -5,
                    offset: Offset(0, 20),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.04),
                    blurRadius: 10,
                    spreadRadius: -5,
                    offset: Offset(0, 10),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.5.w),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 20.sp,
                ),
              ),
            ),
          )
        : SizedBox(
            height: 50,
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12.5,
                  width: 12.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icons/menu.png",
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 2.5.w),
                Container(
                  height: 22.5,
                  width: 22.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                ),
                SizedBox(width: 2.5.w),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  Widget reminderModal() {
    return SizedBox(
      height: 70.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.w),
                topRight: Radius.circular(6.w),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Icon(
                    //   Icons.arrow_back,
                    //   color: Colors.white,
                    //   size: 20.sp,
                    // ),
                    // SizedBox(width: 2.5.w),
                    Text(
                      "Reminder",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Set",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF6F6F6),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 2.5.w),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_up_sharp,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.w,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Today, 2:46 pm",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Repeat",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_up_sharp,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    modalSingleTile("Never"),
                    modalSingleTile("Daily"),
                    modalSingleTile("Weekly"),
                    modalSingleTile("Monthly"),
                    modalSingleTile("Yearly"),
                    emailReminderTile(),
                    SizedBox(height: 2.5.w),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget modalSingleTile(String title) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 2.5.w,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }

  Widget emailReminderTile() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 2.5.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Receive Email Reminder",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          InkWell(
            onTap: () {
              _todoController.emailReminderSelected.value =
                  !_todoController.emailReminderSelected.value;
            },
            child: Obx(() {
              return Container(
                height: 32.5,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.w),
                  border: Border.all(
                    color: _todoController.emailReminderSelected.value
                        ? Colors.green
                        : Colors.black,
                  ),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 0.5.w, vertical: 1.25.w),
                child: Row(
                  children: [
                    !_todoController.emailReminderSelected.value
                        ? Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          )
                        : const SizedBox(),
                    const Spacer(),
                    _todoController.emailReminderSelected.value
                        ? Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
