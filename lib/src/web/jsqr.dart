@JS()
library jsqr;

import 'dart:typed_data';

import 'package:js/js.dart';

@JS('jsQR')
external Code? jsQR(dynamic data, int? width, int? height);

@JS()
class Code {
  external String get data;

  external Uint8ClampedList get binaryData;
}
