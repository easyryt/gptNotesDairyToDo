import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AskAiScreen extends StatefulWidget {
  const AskAiScreen({super.key});

  @override
  State<AskAiScreen> createState() => _AskAiScreenState();
}

class _AskAiScreenState extends State<AskAiScreen> {
  String chatReply =
      "d in your arms and be held as if I could break.I WISH TO REST INTO YOU my love possibly collapse and I know we mustn't fall for we must hold our selves before we hold each other's warm bodies in the night that bites where lovers lay but tonight my love I would like to collapse I would like to exhale and with it let go of all my fireall the do's I would like to be a child in your arms and be held as if I could break. I WISH TO REST INTO YOU my love possibly collapse and I know we mustn't fall for we must hold our selves before we hold each other's warm bodies in the night that bites where lovers lay but tonight my love I would like to collapse I would like to exhale and with it let go of all my fire all the do's. I would like to be a child in your arms and be held as if I could break.";

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
              appbar(),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return singleSenderChatTile();
                    }),
              ),
              SizedBox(height: 2.5.h),
              Container(
                // height: 60,
                width: 100.w,
                padding: EdgeInsets.symmetric(vertical: 2.5.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.w),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(99, 99, 99, 0.2),
                              blurRadius: 8,
                              spreadRadius: 0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            hintText: "Type message..",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(99, 99, 99, 0.2),
                            blurRadius: 8,
                            spreadRadius: 0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.send_sharp,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.5.w)
            ],
          ),
        ),
      ),
    );
  }

  Widget singleSenderChatTile() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/notes.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 2.5.w),
            Text(
              "You",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              height: 25,
              width: 25,
            ),
            SizedBox(width: 2.5.w),
            Text(
              "Write About AI",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              height: 25,
              width: 25,
            ),
            SizedBox(width: 2.5.w),
            Expanded(
              child: Text(
                chatReply,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget appbar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.edit,
                size: 20.sp,
                color: Colors.black,
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.menu,
                size: 20.sp,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
