import 'package:flutter/material.dart';

extension DoubleExtention on double {
  Widget get width => SizedBox(width: this);
  Widget get height => SizedBox(height: this);
}
