import 'package:flutter/material.dart';
import 'package:skygoal_tech_intership_project/widgets/custom_bottom_navigation_bar.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavigationBar(),
    );
  }
}