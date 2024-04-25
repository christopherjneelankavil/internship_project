import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skygoal_tech_intership_project/UIHelper/ui_helper.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description',
                style: UIHelper.customTextStyle4(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
              style: UIHelper.customTextStyle5(),
              maxLines: 7,
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Location',
                style: UIHelper.customTextStyle4(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('lib/assets/location.png'),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Student Review',
                style: UIHelper.customTextStyle4(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  createPerson(),
                  const SizedBox(width: 20,),
                  createPerson(),
                  const SizedBox(width: 20,),
                  createPerson(),
                  const SizedBox(width: 20,),
                  createPerson(),
                  const SizedBox(width: 20,),
                  createPerson()
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('lib/assets/review.png'),
          ],
        ),
      ),
    );
  }

  Container createPerson() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey),
      height: 50,
      width: 50,
      child: const Icon(Icons.person_3),
    );
  }
}
