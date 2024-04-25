import 'package:flutter/material.dart';
import 'package:skygoal_tech_intership_project/UIHelper/ui_helper.dart';
import 'package:skygoal_tech_intership_project/screens/about.dart';
import 'package:skygoal_tech_intership_project/screens/events.dart';
import 'package:skygoal_tech_intership_project/screens/hostels.dart';
import 'package:skygoal_tech_intership_project/screens/q_and_a.dart';
import 'package:skygoal_tech_intership_project/utils/utilities.dart';

class CollegeDetails extends StatefulWidget {
  final String collegeName;
  final String collegeImg;
  const CollegeDetails(
      {super.key, required this.collegeName, required this.collegeImg});

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails>
    with TickerProviderStateMixin {
  //late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   //_tabController = TabController(length: 4, vsync: this);
  // }
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.collegeName,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: backGroundColor,
        leading: Container(
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(widget.collegeImg, fit: BoxFit.cover),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.collegeName,
                          style: const TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nFelis consectetur nulla pharetra praesent hendrerit \nvulputate viverra. Pellentesque aliquam tempus faucibus \nest.',
                            style: UIHelper.customTextStyle3()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 39, 194, 0)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '  4.3  ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: backGroundColor,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: 'About College',
                    ),
                    Tab(
                      text: 'Hostel facility',
                    ),
                    Tab(
                      text: 'Q & A',
                    ),
                    Tab(
                      text: 'Events',
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: const [AboutCollege(), Hostels(), QA(), Events()],
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        width: 360,
        height: 60,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )),
            backgroundColor: MaterialStateProperty.all(backGroundColor)
          ),
          onPressed: () {},
          child: const Text(
            'Apply Now',
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
