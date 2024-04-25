import 'package:flutter/material.dart';
import 'package:skygoal_tech_intership_project/screens/college_details.dart';
import 'package:skygoal_tech_intership_project/utils/utilities.dart';
import 'package:skygoal_tech_intership_project/widgets/custom_bottom_navigation_bar2.dart';

class UIHelper {
  static homeScreenAppbar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Find your own way',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search in 600 colleges around!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 53,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search for colleges, schools.....',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16))),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  height: 53,
                  width: 55,
                  child: const Icon(
                    Icons.mic,
                    size: 28,
                    color: Color.fromARGB(255, 16, 60, 110),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static homeImage(String imgPath, double h, double w, BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Sort By',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.close)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  ListTile(
                      title: Text(
                        'Bachelor of Technology',
                        style: customStyle1(),
                      ),
                      leading: Image.asset('lib/assets/education.png'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {
                          if (value!) {
                            goToColloegeList(context);
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  ListTile(
                      title: Text(
                        'Bachelor of Architecture',
                        style: customStyle1(),
                      ),
                      leading: Image.asset('lib/assets/sketch.png'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {
                          if (value!) {
                            goToColloegeList(context);
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  ListTile(
                      title: Text(
                        'Pharmacy',
                        style: customStyle1(),
                      ),
                      leading: Image.asset('lib/assets/pharmacy.png'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {
                          if (value!) {
                            goToColloegeList(context);
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  ListTile(
                      title: Text(
                        'Law',
                        style: customStyle1(),
                      ),
                      leading: Image.asset('lib/assets/law.png'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {
                          if (value!) {
                            goToColloegeList(context);
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                  ListTile(
                      title: Text(
                        'Management',
                        style: customStyle1(),
                      ),
                      leading: Image.asset('lib/assets/management.png'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {
                          if (value!) {
                            goToColloegeList(context);
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                ],
              ),
            );
          },
        );
      },
      child: Image.asset(
        imgPath,
        height: h,
        width: w,
      ),
    );
  }

  static customStyle1() {
    return const TextStyle(
        fontFamily: 'Lato', fontWeight: FontWeight.w600, fontSize: 18);
  }

  static goToColloegeList(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return const CustomBottomNavigationBar2();
    }));
  }

  static collegeListAppbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(153),
      child: Container(
        decoration: const BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(24, 32),
            bottomRight: Radius.elliptical(24, 32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 53,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search for colleges, schools.....',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    height: 53,
                    width: 55,
                    child: const Icon(
                      Icons.mic,
                      size: 28,
                      color: Color.fromARGB(255, 16, 60, 110),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static rowCollegeNames() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            rowTextButton(),
            rowTextButton(),
            rowTextButton(),
            rowTextButton(),
          ],
        ),
      ),
    );
  }

  static Padding rowTextButton() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
        onPressed: () {},
        child: Text('MVSH Engineering college', style: customTextStyle2()),
      ),
    );
  }

  static customTextStyle2() {
    return const TextStyle(
      fontFamily: 'Lato',
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  static createCollegeTiles(String collegeName, String collegeImg,BuildContext context) {
    return SizedBox(
      height: 354,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 142, 142, 142).withOpacity(.5)
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            decoration: BoxDecoration(
               boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black.withOpacity(0.02)
              )
              ]
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(collegeImg),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        collegeName,
                        style: const TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing',
                            style: customTextStyle3(),
                          ),
                          Text(
                            ' elit. Eu ut imperdiet sed nec ullamcorper.',
                            style: customTextStyle3(),
                          )
                        ],
                      ),
                      TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 26, 19, 120),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return CollegeDetails(collegeName: collegeName,collegeImg:collegeImg);
                          }));
                        },
                        child: const Text(
                          'Apply Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [Image.asset('lib/assets/like.png'),
                    Text(
                      'More than 1000+ students have been placed',
                      style: customTextStyle3(),
                    ),],),
                    Row(
                      children: [
                        const Icon(
                      Icons.remove_red_eye,
                      color: Color.fromARGB(255, 142, 142, 142),
                    ),
                    Text(
                      '468+',
                      style: customTextStyle3(),
                    )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static customTextStyle6() {
    return const TextStyle(
      fontSize: 14,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      color: Colors.black
    );
  }

  static customTextStyle3() {
    return const TextStyle(
      fontSize: 9,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 142, 142, 142),
    );
  }

  static customTextStyle4(){
    return const TextStyle(

      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Colors.black
    );

  }

  static customTextStyle5(){
    return const TextStyle(

      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Color.fromARGB(255, 150, 151, 151)
    );

  }

  // static tabBarTextStyle(){
  //   return const TextStyle(
  //     color: Colors.black,
  //     fontFamily: 'Lato',
  //     fontSize: 12,
  //     fontWeight: FontWeight.w700,
  //   );
  // }
}





// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height);
//     path.lineTo(size.width * 0.6, size.height);
//     path.lineTo(size.width*0.6, size.height*0.8333);
//     path.lineTo(size.width, size.width * 0.8333);
//     path.lineTo(size.width, 0);
//     path.close();

//     // var firstEndPoint = Offset((size.width * 0.6) - 70, size.height);
//     // var firstControlPoint = Offset((size.width * 0.6) + 80, size.height - 90);
//     // path.quadraticBezierTo(firstEndPoint.dx, firstEndPoint.dy,
//     //     firstControlPoint.dx, firstControlPoint.dy);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
