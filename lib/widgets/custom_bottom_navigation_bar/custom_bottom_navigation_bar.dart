import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar/screens/explore/explore_screen.dart';
import 'package:nectar/screens/profilescreen/profile_screen.dart';
class CustomBottomNavigationBar extends StatefulWidget {
 const CustomBottomNavigationBar({super.key,required this.selectedIndex  });

  final int selectedIndex;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
          ,boxShadow: const [BoxShadow(color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 5)]),
      child:BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        backgroundColor: Colors.white10,
        elevation: 0,
        iconSize:40,
        unselectedItemColor: const Color(0xff181725),
        selectedItemColor: const Color(0xff53B175),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: Color(0xff53B175),
            fontSize: 12,
            fontWeight: FontWeight.w700
        ),
        unselectedLabelStyle: TextStyle(
            color: Color(0xff181725),
            fontSize: 12,
            fontWeight: FontWeight.w700
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/HomeIcon.png"),
              width: 30,
              height: 30,
            ),
            backgroundColor: const Color(0x000000ff),
            label: "Home",
            activeIcon: Image(
              image: AssetImage("assets/images/homeIconSelected.png"),
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/exploreIcon.png"),
              width: 30,
              height: 30,
            ),
            backgroundColor: const Color(0xffffffff),
            label: "Explore",
            activeIcon: Image(
              image: AssetImage("assets/images/exploreIconSelected.png"),
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/cartIcon.png"),
              width: 30,
              height: 30,
            ),
            backgroundColor: const Color(0x000000ff),
            label: "Cart",
            activeIcon: Image(
              image: AssetImage("assets/images/cartIconSelected.png"),
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image:  AssetImage( "assets/images/favoriteIcon.png"),
              width: 30,
              height: 30,
            ),
            backgroundColor: const Color(0x000000ff),
            label: "Favorite",
            activeIcon: Image(
              image: AssetImage("assets/images/favoriteIconSelected.png"),
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/profileIcon.png"),
              width: 30,
              height: 30,
            ),
            backgroundColor: const Color(0x000000ff),
            label: "Profile",
            activeIcon: Image(
              image: AssetImage("assets/images/profileIconSelected.png"),
              width: 30,
              height: 30,
            ),
          ),
        ],
        onTap: (index) {
          if(index==4){
            Get.to(()=>ProfileScreen());
            setState(() {});
          }else if(index==1){
            Get.to(()=>ExploreScreen());
            setState(() {});
          }
          setState(() {});
        },
      ),
    );
  }
}
