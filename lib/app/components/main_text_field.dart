import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTextField extends StatelessWidget {
  final String hint;
  final double borderRadius;
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;

  const MainTextField({
    Key? key,
    required this.hint,
    this.borderRadius = 6,
    required this.textEditingController,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextField(
        keyboardType: keyboardType,
        maxLines: 1,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          hintStyle: TextStyle(fontSize: 14.sp),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
