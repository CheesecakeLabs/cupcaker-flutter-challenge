import 'package:flutter/material.dart';
import 'package:CupcakerChallenge/constants/all.dart';

part 'caption.dart';
part 'input.dart';
part 'label.dart';
part 'link.dart';
part 'paragraph.dart';
part 'title.dart';
part 'typography.dart';

class CustomText extends StatelessWidget {
  final Color? background;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TypographyStyle style;
  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;
  final bool wrap;

  const CustomText({
    required this.text,
    required this.style,
    this.background,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.letterSpacing,
    this.textAlign,
    this.textDecoration,
    this.textOverflow,
    this.wrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: typographyStyle[style]?.copyWith(
        backgroundColor: background,
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
      ),
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: true,
        applyHeightToLastDescent: true,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      overflow: textOverflow,
      softWrap: wrap,
    );
  }
}
