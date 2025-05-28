import 'package:intl/intl.dart';

extension XCurrencyFormatter on double {
  String formatVND() {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'VND',
      decimalDigits: 0, // VND typically has no decimal digits
    );
    // Remove the space before VND if it exists, and replace comma with dot for thousands
    return formatter.format(this).replaceAll(' ', '').replaceAll(',', '.');
  }
}
