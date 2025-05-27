

import 'package:intl/intl.dart';

class HumanFormtas {
  static String humanReadableNumber(double number) {
    
    final formatNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',

    ).format(number);
    return formatNumber;
  }
}