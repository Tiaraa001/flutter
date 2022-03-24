import 'package:apotek_flutter/screens/user_screen.dart';
import 'package:apotek_flutter/screens/barang_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'controller_bindings.dart';
import 'main_screen.dart';
import 'profile_screen.dart';
import 'home.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner:false,
      home:SplashScreenView(
        navigateRoute:BarangScreen(),
        duration:4000,
        imageSize: 200,
        imageSrc:"assets/img/1.png",
        backgroundColor:Colors.green.shade300
      ),
    );
  }
}