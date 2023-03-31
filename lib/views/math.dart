import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masjid_ribat_academy/utils/my_size.dart';

import 'search_academy.dart';
import 'video_player.dart';

class MathScreen extends StatefulWidget {
  MathScreen(
      {Key? key,
      required this.title,
      required this.grades,
      required this.subtitles,
      required this.a})
      : super(key: key);
  String title;
  String grades;
  String subtitles;
  String a;

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  int currentIndex = 0;
  List<MathModel> mathList = [
    MathModel("1", "Early math review"),
    MathModel("1", "Kindergarten"),
    MathModel("1", "1st Grade"),
    MathModel("2", "2nd Grade"),
    MathModel("3", "3rd Grade"),
    MathModel("4", "4th Grade"),
    MathModel("5", "5th Grade"),
    MathModel("6", "6th Grade"),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Container(
                  height: MySize.size50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: MySize.size5,
                            ),
                            Text(
                              "Back",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue)),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        widget.title,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: MySize.size18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ),
                      SizedBox(),
                      SizedBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => PlayVideoFromYoutube(
                          title: widget.title,
                          subtitle: widget.subtitles,
                          a: widget.a,
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MySize.size7,
                                  ),
                                  Text(
                                    "Grade",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: MySize.size10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white)),
                                  ),
                                  Text(
                                    widget.grades,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: MySize.size20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MySize.size10,
                            ),
                            Text(
                              widget.title,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: MySize.size16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 14,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: MySize.size15,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          indent: 48,
                          endIndent: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 3),
        height: MySize.scaleFactorHeight * 72,
        decoration: const BoxDecoration(color: Colors.white),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.8,
                  color: Colors.blue),
              unselectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
              currentIndex: currentIndex,
              onTap: (a) {
                setState(() {
                  currentIndex = a;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: currentIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark_border_outlined,
                      color: currentIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                    label: "Bookmarks"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MathModel {
  String grade;
  String titleText;

  MathModel(this.grade, this.titleText);
}
