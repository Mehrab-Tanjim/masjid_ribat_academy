import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_player/pod_player.dart';
import 'package:masjid_ribat_academy/utils/my_size.dart';

class PlayVideoFromYoutube extends StatefulWidget {
  PlayVideoFromYoutube(
      {Key? key, required this.title, required this.subtitle, required this.a})
      : super(key: key);
  String title;
  String a;
  String subtitle;

  @override
  State<PlayVideoFromYoutube> createState() => _PlayVideoFromYoutubeState();
}

class _PlayVideoFromYoutubeState extends State<PlayVideoFromYoutube> {
  late final PodPlayerController controller;
  int _selectedValue = 1;
  int currentIndex = 0;

  List<VedioPlayer> vedioList = [
    VedioPlayer("Algebric Operations"),
    VedioPlayer("The Human Body"),
    VedioPlayer("Aggregate Demand"),
    VedioPlayer("Conflict and Adversity."),
    VedioPlayer("Algorithms and data structures"),
    VedioPlayer("Technology."),
    VedioPlayer("Collaboration"),
  ];

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.a),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            PodVideoPlayer(
                podProgressBarConfig: PodProgressBarConfig(
                  curveRadius: 20,
                  backgroundColor: Colors.black12,
                  height: 4,
                  alwaysVisibleCircleHandler: true,
                  bufferedBarColor: Colors.amber,
                  playingBarColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 0),
                ),
                backgroundColor: Colors.black,
                alwaysShowProgressBar: true,
                controller: controller),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Text(
                      widget.title,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: MySize.size18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      height: MySize.size10,
                    ),
                    Text(
                      widget.subtitle,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: MySize.scaleFactorHeight * 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ],
                )),
            SizedBox(
              height: MySize.size10,
            ),
            Divider(),
            SizedBox(
              height: MySize.size5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        "Bookmarks",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: MySize.scaleFactorHeight * 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      Text(
                        "Share",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: MySize.scaleFactorHeight * 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.edit_note_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Text(
                        "Transcript",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: MySize.scaleFactorHeight * 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MySize.size10,
            ),
            Container(
              height: MySize.size30,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.05),
                border: Border.all(color: Colors.black12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Up next",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: MySize.scaleFactorHeight * 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
            ),
            SizedBox(
              height: MySize.size10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1)),
              child: ListTile(
                leading: Icon(Icons.bookmark_outline, size: 35),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Part of lesson",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: MySize.scaleFactorHeight * 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                    Text(
                      "Counting",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: MySize.scaleFactorHeight * 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            Container(
              height: MySize.size56,
              width: Get.width,
              color: Colors.blue.withOpacity(0.25),
              child: Row(
                children: [
                  VerticalDivider(
                    color: Colors.blue,
                    width: 4,
                    thickness: 5,
                  ),
                  SizedBox(
                    width: MySize.size15,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  Text(
                    "Counting with small numbers",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.scaleFactorHeight * 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                  Spacer(),
                  Text(
                    "00:56",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.scaleFactorHeight * 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                ],
              ),
            ),
            Container(
              height: MySize.size60,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: MySize.size15,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  Text(
                    "Counting with small numbers",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.scaleFactorHeight * 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  Spacer(),
                  Text(
                    "01:56",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.scaleFactorHeight * 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                ],
              ),
            ),
            Container(
              height: MySize.size60,
              width: Get.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 0.5),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MySize.size15,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text(
                                  "Quizes",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Text(
                                      "a : 0",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Radio(
                                      value: 1,
                                      groupValue: _selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Text(
                                      "b : 1",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Radio(
                                      value: 2,
                                      groupValue: _selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Text(
                                      "c : 2",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Radio(
                                      value: 3,
                                      groupValue: _selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Text(
                                      "d : 3",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Radio(
                                      value: 4,
                                      groupValue: _selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                        child: Text(
                          "Counting with small numbers",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: MySize.scaleFactorHeight * 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ));
                  })
                ],
              ),
            ),
          ],
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

class VedioPlayer {
  String subtitle;
  VedioPlayer(this.subtitle);
}
