import 'package:CupcakerChallenge/components/atoms/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String emptyStateImage = 'assets/svg/empty-state.svg';

class EmptyState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(emptyStateImage),
        const Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: CustomText(
            text: "You don't have\n any coins yet!",
            style: TypographyStyle.P1,
            fontWeight: FontWeight.w400,
          ),
        ), 
      ],
    );
  }
}