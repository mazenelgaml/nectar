import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custombottom/custom_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _quantity = 1;
  final double _unitPrice = 4.99;

  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = _unitPrice * _quantity;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: Get.width,
            height: 371.44,
            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.save_alt),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/images/apple.png',
                  width: Get.width * 0.8,
                  height: 199.18,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            width: Get.width*0.96,
            height: Get.height-400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Naturel Red Apple",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff181725),
                          ),
                        ),
                        Text(
                          "1kg, Price",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: _decreaseQuantity,
                          icon: Icon(Icons.remove, color: Colors.green),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              '$_quantity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: _increaseQuantity,
                          icon: Icon(Icons.add, color: Colors.green),
                        ),
                      ],
                    ),
                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff181725),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: Get.height*0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Container(
                          width: Get.width*0.99,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Detail",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff181725),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.navigate_next_outlined),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: Get.width*0.99,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nutritions",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff181725),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 33.61,
                                height: 27,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Center(
                                  child: Text(
                                    '100gr',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.navigate_next_outlined),
                                onPressed: () {
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: Get.width*0.99,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),

                        ),
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Review",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff181725),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 150,
                                height: 10,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return
                                     Icon(Icons.star, color: Color(0xffF3603F),size: 28,);


                                  },
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.navigate_next_outlined),
                                onPressed: () {
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Add To Basket',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
