import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/constants/app_constants.dart';
import 'package:personal_portfolio/widgets/semi_circle_painter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // CustomPaint(
          //   size: Size(double.infinity, 400),
          //   child: ,
          // )
          Container(
            height: 1300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.circular(100),
              gradient: RadialGradient(
                  stops: [0.1, 1],
                  center: Alignment.topCenter,
                  colors: [AppColors.greenColor, AppColors.blackColor]),
            ),
          )
        ],
      ),
    );
  }
}
