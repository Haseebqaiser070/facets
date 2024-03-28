import 'package:facets/constants/constants.dart';
import 'package:facets/views/Search.dart';
import 'package:facets/widgets/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:animations/animations.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              PageRouteBuilder<void>(
                transitionDuration:
                    const Duration(seconds: 1), // Adjust the duration as needed
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return SharedAxisTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.scaled,
                    child: const SearchScreen(),
                  );
                },
              ),
            );
          },
          child: TextWidget(
            text: "SEARCH",
            size: 10.0.sp,
            weight: FontWeight.w300,
            color: primaryText,
          ),
        ),
        InkWell(
          child: TextWidget(
            text: "BAG",
            size: 10.0.sp,
            weight: FontWeight.w300,
            color: primaryText,
          ),
        ),
      ],
    );
  }
}
