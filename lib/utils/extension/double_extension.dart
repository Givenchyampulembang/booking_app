import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExtention on double {
  Widget get width => SizedBox(width: this.w);
  Widget get height => SizedBox(height: this.h);
}
