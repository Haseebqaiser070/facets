import 'package:facets/widgets/footor.dart';
import 'package:facets/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            child: Column(
              children: [
                Header(),
                Spacer(),
                Center(
                  child: Image(
                    width: 50.w,
                    height: 50.h,
                    image: AssetImage("assets/FACETS.jpg"),
                  ),
                ),
                Spacer(),
                Footor(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
