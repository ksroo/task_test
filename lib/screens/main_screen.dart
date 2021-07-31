import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';
import 'category_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'shop_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final tabs = [
    HomeScreen(),
    CategoryScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsUtils.kMainColor,
          iconSize: 38,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              backgroundColor: ColorsUtils.kgery,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_sharp,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
              ),
              // icon: Stack(
              //   children: [
              //     Icon(Icons.shop),
              //     Container(
              //       margin: EdgeInsets.only(left: 35, bottom: 20),
              //       child: CircleAvatar(
              //         backgroundColor: ColorsUtils.kMainColor,
              //         maxRadius: 10,
              //         minRadius: 10,
              //         child: Text(
              //           "0",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "",
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: ColorsUtils.kMainColor,
          title: Text(
            "Products",
            style: TextStyle(
              color: ColorsUtils.kWhite,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: tabs,
        ),
      ),
    );
  }
}
