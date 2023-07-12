import 'package:dghub_ui/components/responsive.dart';
import 'package:dghub_ui/widgets/list_item/list_item.dart';
import 'package:dghub_ui/widgets/responsive/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet/bottom_sheet.dart';
import 'dialog/dialog.dart';

class Widgets {
  DGBottomSheet bottomSheet = DGBottomSheet();
  ListItem listItem = ListItem();
  Dialogs dialogs = Dialogs();
  ResponsiveWidget responsive(
          {Widget? mobile, Widget? tablet, Widget? desktop}) =>
      ResponsiveWidget(mobile: mobile, tablet: tablet, desktop: desktop);
}
