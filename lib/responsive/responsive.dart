import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayaut;
  final Widget mobileScreenLayaut;
  const ResponsiveLayout({
    super.key,
    required this.webScreenLayaut,
    required this.mobileScreenLayaut,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        return webScreenLayaut;
      }
      return mobileScreenLayaut;
    });
  }
}
