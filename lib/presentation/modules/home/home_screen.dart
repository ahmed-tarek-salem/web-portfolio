import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/modules/header/header_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeaderScreen(),
          Container(
            height: 100.h,
            width: 100.h,
            child: Center(
              child: Text(
                'PROJECT PROCESS',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
