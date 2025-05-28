import 'package:esupa_store_pos/utils/currency_formatter.dart';
import 'package:flutter/material.dart';

class CurrencyText extends StatelessWidget {
  final double amount;
  final TextStyle? style;
  final TextAlign? textAlign;

  const CurrencyText({
    super.key,
    required this.amount,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown, // Scales down the text to fit
      alignment: Alignment.centerRight, // Align to right within FittedBox
      child: Text(amount.formatVND(), style: style, textAlign: textAlign),
    );
  }
}
