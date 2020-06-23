
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nice/thirteen/nice_localizations.dart';

class NiceLocalizationsDelegate extends LocalizationsDelegate<NiceLocalizations> {

  @override
  bool isSupported(Locale locale) => ['en','ja', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(LocalizationsDelegate old) => false;

  @override
  Future<NiceLocalizations> load(Locale locale) {
    return SynchronousFuture<NiceLocalizations>(NiceLocalizations(locale));
  }


}