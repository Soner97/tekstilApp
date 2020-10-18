import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  ThemeData get theme => Theme.of(this);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(dynamicHeight(0.01));
  EdgeInsets get paddingMedium => EdgeInsets.all(dynamicHeight(0.02));

  EdgeInsets get paddingHigh => EdgeInsets.all(dynamicHeight(0.03));
}
