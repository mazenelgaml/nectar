
import 'package:flutter/cupertino.dart';
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
      home:SplashScreen(),
    );
  }
}