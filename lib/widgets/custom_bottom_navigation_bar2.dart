import 'package:flutter/material.dart';
import 'package:skygoal_tech_intership_project/screens/account_screen.dart';
import 'package:skygoal_tech_intership_project/screens/hom-4.dart';
//import 'package:skygoal_tech_intership_project/screens/home.dart';
import 'package:skygoal_tech_intership_project/screens/saved_screen1.dart';
import 'package:skygoal_tech_intership_project/screens/saved_screen2.dart';

class CustomBottomNavigationBar2 extends StatelessWidget {
  const CustomBottomNavigationBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 16, 60, 110),
          height: 65,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.bookmark_outlined),
                text: 'Saved',
              ),
              Tab(
                icon: Icon(Icons.bookmark_add_rounded),
                text: 'Saved',
              ),
              Tab(
                icon: Icon(Icons.person_rounded),
                text: 'Accuont',
              )
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 184, 182, 182),
          ),
        ),
        body: const TabBarView(
          children: [
            CollegeList(),
            SavedScreen1(),
            SavedScreen2(),
            AccontScreen(),
          ],
        ),
      ),
    );
  }
}