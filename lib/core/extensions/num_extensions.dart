import 'package:intl/intl.dart';
import 'package:ulearna_app/i10n/translations/translations.g.dart';

extension NumExtensions on int {
  Duration get days => Duration(days: this);
  Duration get hours => Duration(hours: this);
  Duration get minutes => Duration(minutes: this);
  Duration get seconds => Duration(seconds: this);
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get microseconds => Duration(microseconds: this);

  String formatAmountCompact({
    bool explicitSign = false,
  }) {
    final formatter = NumberFormat.compact(
      locale: LocaleSettings.currentLocale.countryCode,
      explicitSign: explicitSign,
    );

    return formatter.format(this);
  }
}
