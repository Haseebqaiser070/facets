import 'package:facets/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:facets/widgets/textWidget.dart';

import 'package:sizer/sizer.dart';

class Footor extends StatelessWidget {
  const Footor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: TextWidget(
            text: "TEAM",
            size: 10.0.sp,
            weight: FontWeight.w300,
            color: primaryText,
          ),
        ),
        InkWell(
          child: TextWidget(
            text: "PORTFOLIO",
            size: 10.0.sp,
            weight: FontWeight.w300,
            color: primaryText,
          ),
        ),
        InkWell(
          child: TextWidget(
            text: "STORE",
            size: 10.0.sp,
            weight: FontWeight.w300,
            color: primaryText,
          ),
        ),
      ],
    );
  }
}
