
import 'package:buiseness_vyapaari/model/member_model.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/about_member_widget.dart';
import 'package:flutter/material.dart';

class AboutMemberScreenPage extends StatefulWidget {
  const AboutMemberScreenPage({super.key});

  @override
  State<AboutMemberScreenPage> createState() => _AboutMemberScreenPageState();
}

class _AboutMemberScreenPageState extends State<AboutMemberScreenPage> {
  List<AboutMemberModel> AboutMemberList=[
    AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
     AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
      AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
       AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
        AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
         AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
          AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
           AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
            AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
             AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
              AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
               AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                 AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                  AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                   AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                    AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                     AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                      AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                       AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                        AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),
                         AboutMemberModel(id: "1", Image: "assets/icons/profile.png", Name: "Arun Parikh",post: "President of Avm",  mobile: 9658457845),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return AboutMemberWidget(
                          aboutmember: AboutMemberList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: AboutMemberList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}