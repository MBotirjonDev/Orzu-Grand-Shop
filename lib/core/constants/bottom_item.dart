import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orzugrandshop/core/constants/bottom_text_style.dart';

List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset("assets/bottom/home.png"),
        Text(
          "Главная",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30.sp,
          ),
        ),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset("assets/bottom/search-status.png"),
        bottomTextStyle("Каталог"),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset("assets/bottom/shopping-cart.png"),
        bottomTextStyle("Корзина"),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset("assets/bottom/heart.png"),
        bottomTextStyle("Избранное"),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset("assets/bottom/user.png"),
        bottomTextStyle("Профиль"),
      ],
    ),
    label: '',
  ),
];
