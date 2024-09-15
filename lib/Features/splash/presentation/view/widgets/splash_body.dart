import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geminiapp/Features/home/presentation/view/home_screen.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 120.h, left: 15.w, right: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,\nHow can i help you today ?',
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: 200.w,
              height: 45.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Text(
                  'Start a Chat ',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/bot2.png',
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
