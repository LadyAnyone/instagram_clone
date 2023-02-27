import 'package:flutter/material.dart';
import 'package:instagram_clone/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../utils/dimensions.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webScreenLayaut;
  final Widget mobileScreenLayaut;
  const ResponsiveLayout({
    super.key,
    required this.webScreenLayaut,
    required this.mobileScreenLayaut,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData() async {
    UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        return widget.webScreenLayaut;
      }
      return widget.mobileScreenLayaut;
    });
  }
}
