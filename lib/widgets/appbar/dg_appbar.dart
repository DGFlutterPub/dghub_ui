import 'package:dghub_ui/widgets/appbar/designs/appbar_design_simple.dart';
import 'package:flutter/material.dart';

import '../../dghub_ui.dart';

class DGAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double height;
  final DGHubAppBarDesign design;
  const DGAppBar(
      {super.key,
      this.title,
      this.height = kToolbarHeight,
      this.design = DGHubAppBarDesign.simple});

  @override
  Widget build(BuildContext context) {
    switch (design) {
      case DGHubAppBarDesign.simple:
        return AppBarDesignSimple(
          title: title,
        );
      default:
        return AppBarDesignSimple(
          title: title,
        );
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
