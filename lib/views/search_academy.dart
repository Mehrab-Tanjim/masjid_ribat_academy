import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masjid_ribat_academy/utils/my_size.dart';
import 'package:masjid_ribat_academy/views/math.dart';
import 'package:masjid_ribat_academy/views/ready_to_practice.dart';
import 'package:masjid_ribat_academy/views/video_player.dart';

class SearchAcadmy extends StatefulWidget {
  const SearchAcadmy({Key? key}) : super(key: key);

  @override
  State<SearchAcadmy> createState() => _SearchAcadmyState();
}

class _SearchAcadmyState extends State<SearchAcadmy> {
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
  List<String> Urls = [
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
    "https://youtu.be/bATY_T_6UHY?list=PLExCKwROz20E72GSJaeK4n8mp3yvB7Xkq",
  ];
  List<String> vedioList = [
    "Arabic 101",
    "Arabic 101",
    "Arabic 101",
    "Arabic 101",
    "Arabic 101",
    "Arabic 101",
    "Arabic 101",
  ];
  List<ExploreModel> exploreList = [
    ExploreModel(
      "Fiqh",
      "assets/icons/math2.png",
    ),
    ExploreModel(
      "Arabic",
      "assets/icons/math3.png",
    ),
    ExploreModel(
      "Aqidah",
      "assets/icons/math4.png",
    ),
    ExploreModel("Dawah", "assets/icons/math5.png"),
    ExploreModel(
      "Hadith",
      "assets/icons/math6.png",
    ),
    ExploreModel(
      "Seerah",
      "assets/icons/math7.png",
    ),
    ExploreModel(
      "Tafseer",
      "assets/icons/math5.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            children: [
              SizedBox(
                height: MySize.size40,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: MySize.size30,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: 12,
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                        hintText: "Search",
                        fillColor: Colors.black12,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  )),
                  SizedBox(
                    width: MySize.size6,
                  ),
                  Text(
                    "Filter",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ),
                  SizedBox(
                    width: MySize.size6,
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                width: MySize.size16,
              ),
              Row(
                children: [
                  Text(
                    "Browse Masjid Ribat Academy",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                ],
              ),
              Divider(),
              ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  itemCount: exploreList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => MathScreen(
                              title: exploreList[index].title,
                              grades: mathList[index].grade,
                              subtitles: vedioList[index],
                              a: Urls[index],
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.black12,
                                  child: Image.asset(
                                    "assets/icons/mathh1.png",
                                    height: MySize.size20,
                                  ),
                                ),
                                SizedBox(
                                  width: MySize.size10,
                                ),
                                Text(
                                  exploreList[index].title,
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
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreModel {
  String images;
  String title;

  ExploreModel(
    this.title,
    this.images,
  );
}
