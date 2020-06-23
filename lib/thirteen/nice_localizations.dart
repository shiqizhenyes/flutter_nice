

import 'package:flutter/widgets.dart';

class NiceLocalizations {

  NiceLocalizations(this.locale);

  final Locale locale;

  static NiceLocalizations of(BuildContext context) {
    return Localizations.of<NiceLocalizations>(context, NiceLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValue = {
    'en' : {
      'title': 'International demo'
    },
    'ja' : {
      'title': '国際化の例'
    },
    'zh' : {
      'title' : '国际化示例'
    },
    'zh_Hant' : {
      'title' : '國際化示例'
    }
  };

  String get title {
    if (locale.scriptCode != 'Hans' && locale.scriptCode != null) {
      return _localizedValue[locale.languageCode+ '_' + locale.scriptCode]['title'];
    } else {
      return _localizedValue[locale.languageCode]['title'];
    }
  }


}