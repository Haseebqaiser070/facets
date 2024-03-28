import 'package:facets/constants/constants.dart';
import 'package:facets/widgets/footor.dart';
import 'package:facets/widgets/header.dart';
import 'package:facets/widgets/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchcontroller = TextEditingController();
  List<String> categories = [
    'OBJECTS',
    'MENSWEAR',
    'WOMENSWEAR',
    'ACCESSORIES'
  ];

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
                SizedBox(height: 2.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...categories
                        .map((category) => TextWidget(
                              text: category,
                              size: 9.0.sp,
                              weight: FontWeight.w300,
                              color: primaryText,
                            ))
                        .toList(),
                  ],
                ),
                Spacer(),
                Container(
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _searchcontroller,
                      onSubmitted: (value) {
                        _searchcontroller.clear();
                      },
                      decoration: InputDecoration(
                        hintText: "Collaborate",
                        hintStyle: GoogleFonts.dmSans(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w300,
                          color: primaryText,
                        ),
                        alignLabelWithHint: true,
                      ),
                    ),
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
