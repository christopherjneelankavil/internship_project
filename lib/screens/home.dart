import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skygoal_tech_intership_project/UIHelper/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(225),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 16, 60, 110),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(24,32),
              bottomRight: Radius.elliptical(24,32),
            ),
          ),
          child: UIHelper.homeScreenAppbar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // ClipPath(
              //   clipper: WaveClipper(),
              //   child: Image.asset(
              //     'lib/assets/top_colleges.png',
              //     width: 354,
              //     height: 158,
              //     fit: BoxFit.contain,
              //   ),
              // )
              const SizedBox(
                height: 20,
              ),
              UIHelper.homeImage(
                  'lib/assets/top_colleges.png', 158, 354, context),
              const SizedBox(
                height: 20,
              ),
              UIHelper.homeImage(
                  'lib/assets/top_schools.png', 165, 400, context),
              const SizedBox(
                height: 20,
              ),
              UIHelper.homeImage('lib/assets/exams.png', 158, 354, context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
