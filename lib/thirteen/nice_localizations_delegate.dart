
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nice/thirteen/nice_localizations.dart';

class NiceLocalizationsDelegate extends LocalizationsDelegate {

  @override
  bool isSupported(Locale locale) => ["en", "zh"].contains(locale.languageCode);

  @override
  Future load(Locale locale) {
    return SynchronousFuture<NiceLocalizations>(NiceLocalizations(locale.languageCode == "zh"));
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;


}