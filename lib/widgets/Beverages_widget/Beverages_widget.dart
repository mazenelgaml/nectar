import 'package:flutter/material.dart';

class BeveragesWidget extends StatelessWidget {
  final int index;

  BeveragesWidget({required this.index});

  final List<String> images = [
    'assets/images/pepsi diet.png',
    'assets/images/sprit.png',
    'assets/images/tree-top-juice-apple-grape-64oz 1.png',
    'assets/images/mango.png',
    'assets/images/coca cola.png',
    'assets/images/pepsi.png',

  ];

  final List<String> title = [
    'Diet Coke',
    'Sprite Can',
    'Apple & Grape Juice',
    'Orenge Juice',
    'Coca Cola Can',
    'Pepsi Can ',
  ];

  final List<String> kilo = [
    '355ml, Price',
    '355ml, Price',
    '2L, Price',
    '2L, Price',
    '330ml, Price',
    '325ml, Price',
  ];

  final List<String> price = [
    '\$5.99',
    '\$6.99',
    '\$4.99',
    '\$5.99',
    '\$6.99',
    '\$4.99',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,bottom: 5),
      width: 173.32,
      height: 248.51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 16), // Adjust this value as needed to move the image down
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                images[index],
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title[index],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                maxLines: 1,
              ),

              SizedBox(height: 4),
              Text(
                kilo[index],
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                price[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xff53B175),
                  ),
                  width: 45.67,
                  height: 45.67,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16.0),
                    onTap: () {},
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
