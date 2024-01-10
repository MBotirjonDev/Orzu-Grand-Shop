import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orzugrandshop/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(1080, 2280),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ORZUGRAND',
        home:  child,
        );
      },
      child: HomePage(),
    );
  }
}
