import 'package:easyryt_ai_notes_ask_ai/screens/home-screen.dart';
import 'package:easyryt_ai_notes_ask_ai/services/global.dart';
import 'package:easyryt_ai_notes_ask_ai/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 100.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/intro.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Welcome To",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Notebook",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100.w,
                  padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                  child: Text(
                    "Sync your notes across all of your devices",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // width: 70.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.w),
                              bottomLeft: Radius.circular(15.w),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Next",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          Global.storageServices.setBool(
                            Constants.firstScreenSeen,
                            true,
                          );
                          Get.to(() => const HomeScreen());
                        },
                        child: Container(
                          width: 15.w,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.w),
                              bottomRight: Radius.circular(15.w),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.5.h),
          ],
        ),
      ),
    );
  }
}
