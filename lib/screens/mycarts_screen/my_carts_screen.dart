import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nectar/screens/mycarts_screen/controller/my_carts_controller.dart';

import '../../widgets/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import '../widgets/custombottom/custom_button.dart';

class MyCartsScreen extends StatefulWidget {
  const MyCartsScreen({super.key});

  @override
  State<MyCartsScreen> createState() => _MyCartsScreenState();
}

class _MyCartsScreenState extends State<MyCartsScreen> {
  final List<int> _quantities = [];
  final List<double> _totalPrices = [];

  final double _unitPrice = 4.99;

  void _initializeQuantities(int itemCount) {
    if (_quantities.length != itemCount) {
      _quantities.clear();
      _totalPrices.clear();
      for (int i = 0; i < itemCount; i++) {
        _quantities.add(1);
        _totalPrices.add(_unitPrice);
      }
    }
  }

  void _increaseQuantity(int index) {
    setState(() {
      _quantities[index]++;
      _totalPrices[index] = _unitPrice * _quantities[index];
    });
  }

  void _decreaseQuantity(int index) {
    setState(() {
      if (_quantities[index] > 1) {
        _quantities[index]--;
        _totalPrices[index] = _unitPrice * _quantities[index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyCartsController>(
      init: MyCartsController(),
      builder: (controller) {
        _initializeQuantities(controller.Photos.length);

        return Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 2,),
          appBar: AppBar(
            toolbarHeight: Get.height * 0.08,
            title: Text(
              'My Cart',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                color: Color(0xffE2E2E2), // Divider color
                thickness: 1,       // Thickness of the divider
                indent: 10,         // Start margin
                endIndent: 10,      // End margin
              ),
              Container(
                height: Get.height*0.71,
                child: ListView.builder(
                  itemCount: controller.Photos.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: Get.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                "${controller.Photos[index]}",
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${controller.Names[index]}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(Icons.close, color: Color(0xffB3B3B3)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "${controller.Volume[index]}",
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(17),
                                            border: Border.all(color: Colors.grey),
                                          ),
                                          child: IconButton(
                                            onPressed: () => _decreaseQuantity(index),
                                            icon: Icon(Icons.remove, color: Colors.green),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '${_quantities[index]}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(17),
                                            border: Border.all(color: Colors.grey),
                                          ),
                                          child: IconButton(
                                            onPressed: () => _increaseQuantity(index),
                                            icon: Icon(Icons.add, color: Colors.green),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '\$${_totalPrices[index].toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff181725),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40),
                                Divider(
                                  color: Color(0xffE2E2E2), // Divider color
                                  thickness: 1,       // Thickness of the divider
                                  indent: 10,         // Start margin
                                  endIndent: 10,      // End margin
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              CustomButton(onPressed: () {  }, text: 'Go to Checkout',),
            ],
          ),
        );
      },
    );
  }
}
