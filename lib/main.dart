
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nectar/screens/explore/explore_screen.dart';
import 'package:nectar/screens/logingscreen/loging_screen.dart';
import 'package:nectar/screens/orderaccepted/order_accepted.dart';
import 'package:nectar/screens/profilescreen/profile_screen.dart';
import 'package:nectar/screens/select_location/select_location_screen.dart';
import 'package:nectar/screens/signupscreen/signup_screen.dart';
import 'package:nectar/screens/splashscreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home:ExploreScreen(),
    );
  }
}