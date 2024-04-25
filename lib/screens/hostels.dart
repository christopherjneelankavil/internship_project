import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skygoal_tech_intership_project/UIHelper/ui_helper.dart';
import 'package:skygoal_tech_intership_project/utils/utilities.dart';

class Hostels extends StatelessWidget {
  const Hostels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 31,
                  width: 61,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(backGroundColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        )),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('lib/assets/bed1.png'),
                        //const SizedBox(width: 3,),
                        const Text(
                          '4',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                hostelButton('3'),
                const SizedBox(
                  width: 20,
                ),
                hostelButton('2'),
                const SizedBox(
                  width: 20,
                ),
                hostelButton('1'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 154,
                  height: 137,
                  child: Image.asset('lib/assets/hostelimg1.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 154,
                  height: 137,
                  child: Image.asset('lib/assets/hostelimg2.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 154,
                  height: 137,
                  child: Image.asset('lib/assets/hostelimg3.png'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'GHJK Engineering Hostel',
                style: UIHelper.customTextStyle4(),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)),
                child: const Row(
                  children: [
                    Text(
                      ' 4.3 ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/loc.png'),
              Text('   Lorem ipsum dolor sit amet, consectetur ',
              style: UIHelper.customTextStyle3(),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
            style: UIHelper.customTextStyle3(),
            maxLines: 7,
          ),
          const SizedBox(height: 15,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Facilities',
              style: UIHelper.customTextStyle4(),
            ),
          ),
          Row(
            children: [
              Image.asset('lib/assets/university.png'),
              const SizedBox(width: 20,),
              Text('College in 400mtrs',
                style: UIHelper.customTextStyle6(),
              )
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/bath.png'),
              const SizedBox(width: 20,),
              Text('Bathrooms : 2',
                style: UIHelper.customTextStyle6(),
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox hostelButton(String number) {
    return SizedBox(
      height: 31,
      width: 61,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(width: 2, color: backGroundColor),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('lib/assets/bed.png'),
            //const SizedBox(width: 3,),
            Text(
              number,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
