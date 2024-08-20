import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Groceries_widget/groceries_widget.dart';
import '../../widgets/best_selling_widget/best_selling_widget.dart';
import '../../widgets/food_container_widget/food_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),  // Added spacing
            Center(
              child: Container(
                height: 55.64,
                width: 47.84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/carrotorange.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 24),
                SizedBox(width: 8),  // Added spacing
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4C4F4D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width * 0.94,
              height: 114.99,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/banner.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width * 0.9,
              child: Row(
                children: [
                  Text(
                    "Exclusive Offer",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff181725),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width,
              height: 248.51,
              child: ListView.separated(
                itemBuilder: (context, index) => FoodContainerWidget(index: index),
                separatorBuilder: (context, index) => SizedBox(width: 30.0),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width * 0.9,
              child: Row(
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff181725),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width,
              height: 248.51,
              child: ListView.separated(
                itemBuilder: (context, index) => BestSellingWidget(index: index),
                separatorBuilder: (context, index) => SizedBox(width: 30.0),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width * 0.9,
              child: Row(
                children: [
                  Text(
                    "Groceries",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff181725),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              height: 105,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 248.19,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffF8A44C).withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/pulses.png',
                            width: 71.9,
                            height: 71.9,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Pulses",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 248.19,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xff53B175).withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/rice.png',
                            width: 71.9,
                            height: 71.9,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Rice",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),  // Added spacing
            Container(
              width: Get.width,
              height: 248.51,
              child: ListView.separated(
                itemBuilder: (context, index) => GroceriesWidget(index: index),
                separatorBuilder: (context, index) => SizedBox(width: 30.0),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 20),  // Added spacing
          ],
        ),
      ),
    );
  }
}
