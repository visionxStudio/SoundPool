import 'package:HealthApp/constants/color_constants.dart';
import 'package:HealthApp/constants/font_size.dart';
import 'package:HealthApp/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final AppBar appbar = AppBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Health",
                      style: GoogleFonts.notoSerif(
                        fontSize: textSizeXXXLarge,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Our Care",
                      style: GoogleFonts.londrinaOutline(
                        fontSize: textSizeXXXLarge,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                        letterSpacing: 1.4,
                      ),
                    ),
                    SizedBox(
                      height: spacing_standard,
                    ),
                    Column(
                      children: [
                        Text(
                          'Health care should be simple, fast',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: textSizeMedium,
                          ),
                        ),
                        Text(
                          'and uncomplicated',
                          style: TextStyle(
                            color: greyColor,
                            fontSize: textSizeMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: spacing_standard,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: spacing_control,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: buttonColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/body.png',
                  color: imageColor,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  //   return Scaffold(
  //     backgroundColor: primaryColor,
  //     body: SafeArea(
  //       child: Column(
  //         children: [
  //           Expanded(
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: [
  //                   Container(
  //                     height: (MediaQuery.of(context).size.height -
  //                             appbar.preferredSize.height) /
  //                         3,
  //                     color: Colors.white,
  //                   ),
  //                   Expanded(
  //                     child: Container(
  //                       height: (MediaQuery.of(context).size.height -
  //                               appbar.preferredSize.height) *
  //                           (2 / 3),
  //                       color: Colors.red,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
