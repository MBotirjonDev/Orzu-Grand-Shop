import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text bottomTextStyle(String text) {
  return Text(
    "$text",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 30.sp,
    ),
  );
}
