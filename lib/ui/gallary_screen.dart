
import 'package:buiseness_vyapaari/model/gallerymodel.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/galleywidget.dart';
import 'package:flutter/material.dart';


class GallaryUserScreen extends StatefulWidget {
  const GallaryUserScreen({super.key});

  @override
  State<GallaryUserScreen> createState() => _GallaryUserScreenState();
}

class _GallaryUserScreenState extends State<GallaryUserScreen> {
  List<Gallery> gallerylist = [
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-fantasy-clouds-waterfalls-city-greens-constructions-facilities.jpg"),
  ];
  List<Gallery> gallerylisttwo = [
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
    Gallery(IMG: "assets/images/pexels-francesco-ungaro-1525041.jpg"),
  ];

  List<Gallery> statueofunitylist = [
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-statue-of-unity-world-s-tallest-statue-of-sardar-vallabhbhai-sardar-patel-thumbnail.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-statue-of-unity-world-s-tallest-statue-of-sardar-vallabhbhai-sardar-patel-thumbnail.jpg"),
    Gallery(
        IMG:
            "assets/images/desktop-wallpaper-statue-of-unity-world-s-tallest-statue-of-sardar-vallabhbhai-sardar-patel-thumbnail.jpg"),
    Gallery(IMG: "assets/images/Statue-of-Unity-Gujarat.jpg"),
    Gallery(IMG: "assets/images/Statue-of-Unity-Gujarat.jpg"),
    Gallery(IMG: "assets/images/Statue-of-Unity-Gujarat.jpg"),
  ];

  List<Gallery> summereventlist = [
    Gallery(IMG: "assets/images/download.jpeg"),
    Gallery(IMG: "assets/images/Sabarmati-Ashram-cover.webp"),
    Gallery(IMG: "assets/images/images.jpeg"),
    Gallery(IMG: "assets/images/Statue-of-Unity-Gujarat.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.lightwhite2,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white,)),
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Gallery",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "All",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Container(
                      width: 34,
                      height: 34,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8),
                          child: Text(
                            "Ahemedabad",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.16,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            primary: false,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of columns in the grid
                              mainAxisSpacing: 8, // Spacing between rows
                              crossAxisSpacing: 8, // Spacing between columns
                            ),
                            itemCount: gallerylist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Gallerywidget(gallery: gallerylist[index]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8),
                          child: Text(
                            "Test",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.16,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            primary: false,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of columns in the grid
                              mainAxisSpacing: 8, // Spacing between rows
                              crossAxisSpacing: 8, // Spacing between columns
                            ),
                            itemCount: gallerylisttwo.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Gallerywidget(
                                  gallery: gallerylisttwo[index]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8),
                          child: Column(
                            children: [
                              Text(
                                "Vallabhbhai Patel Smark",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.16,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                "Statue of Unity - Sardar",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.16,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            primary: false,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of columns in the grid
                              mainAxisSpacing: 8, // Spacing between rows
                              crossAxisSpacing: 8, // Spacing between columns
                            ),
                            itemCount: statueofunitylist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Gallerywidget(
                                  gallery: statueofunitylist[index]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8),
                          child: Text(
                            "Summer Event",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.16,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            primary: false,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  3, // Number of columns in the grid
                              mainAxisSpacing: 8, // Spacing between rows
                              crossAxisSpacing: 8, // Spacing between columns
                            ),
                            itemCount: summereventlist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Gallerywidget(
                                  gallery: summereventlist[index]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
