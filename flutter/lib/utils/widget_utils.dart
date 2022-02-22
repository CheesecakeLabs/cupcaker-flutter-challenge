import 'package:flutter/widgets.dart';

Offset? widgetPosition({required GlobalKey key}) {
  RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
  Offset? offset = box?.localToGlobal(Offset.zero);

  return offset;
}

Size? widgetSize({required GlobalKey key}) {
  RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;

  return box?.size;
}
