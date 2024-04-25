import 'package:flutter/material.dart';
import 'package:skygoal_tech_intership_project/UIHelper/ui_helper.dart';

class CollegeList extends StatelessWidget {
  const CollegeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIHelper.collegeListAppbar(),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            UIHelper.rowCollegeNames(),
            UIHelper.createCollegeTiles('GHJK Engineering college','lib/assets/college1.png',context),
            UIHelper.createCollegeTiles('Bachelor of Technology','lib/assets/college2.png',context),
            UIHelper.createCollegeTiles('College                   ','lib/assets/college3.png',context),
          ],
        ),
      ),
    );
  }
}
