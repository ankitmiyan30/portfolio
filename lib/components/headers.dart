import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';
import '../utils/utils_exports.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(16),
          //   child: Image.asset(
          //     'assets/header-background.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              SizedBox(
                height: 127,
                width: 127,
                child: ClipOval(
                  child: Image.asset(AppAssets.profile),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                AppString.name,
                style: GoogleFonts.montserrat(
                  color: AppColors.light,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Flutter Developer',
                style: GoogleFonts.montserrat(
                  color: AppColors.light,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
