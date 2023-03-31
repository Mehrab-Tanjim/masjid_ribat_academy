import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masjid_ribat_academy/utils/my_size.dart';
import 'package:masjid_ribat_academy/views/video_player.dart';

class ReadyToPratice extends StatelessWidget {
  const ReadyToPratice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.deepPurple,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        title: Text(
          "Count with small numbers",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MySize.size40,
            ),
            Text(
              "Ready To practice?",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: MySize.size24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ),
            SizedBox(
              height: MySize.size20,
            ),
            Text(
              "Okay, show us what can do!",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            SizedBox(
              height: MySize.size20,
            ),
            Text(
              "7 questions",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                //   Get.to(() => PlayVideoFromYoutube());
              },
              child: Container(
                height: MySize.size40,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  "Let's go'",
                  style: TextStyle(color: Colors.blue),
                )),
              ),
            ),
            SizedBox(
              height: MySize.size40,
            ),
          ],
        ),
      ),
    );
  }
}
