

import 'package:flutter/widgets.dart';

class NiceLocalizations {

  NiceLocalizations(this.isZh);

  bool isZh = false;

  static NiceLocalizations of(BuildContext context) {
    return Localizations.of<NiceLocalizations>(context, NiceLocalizations);
  }


  String get title {
    return isZh ? "国际化示例" :  "International demo";
  }

}