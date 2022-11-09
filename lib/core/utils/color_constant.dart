import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#afafaf');

  static Color black9008e = fromHex('#8e000000');

  static Color bluegray100 = fromHex('#cccccc');

  static Color indigoA200 = fromHex('#6c63ff');

  static Color bluegray10051 = fromHex('#51d9d9d9');

  static Color black900C6 = fromHex('#c6000000');

  static Color black9003f = fromHex('#3f000000');

  static Color orange100 = fromHex('#ffe1b5');

  static Color black900 = fromHex('#000000');

  static Color bluegray10056 = fromHex('#56d9d9d9');

  static Color bluegray103 = fromHex('#d9d9d9');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray1004c = fromHex('#4cd9d9d9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray1008c = fromHex('#8cd9d9d9');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
