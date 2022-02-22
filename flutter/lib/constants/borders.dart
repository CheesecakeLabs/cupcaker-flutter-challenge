import 'package:flutter/material.dart';

const double borderRadius = 8.0;
const double borderWidth = 1.5;

OutlineInputBorder baseOutlineBorder(Color color) => OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: borderWidth,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(borderRadius),
      ),
    );
