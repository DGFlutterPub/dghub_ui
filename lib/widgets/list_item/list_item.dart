import 'package:dghub_ui/widgets/list_item/designs/list_item_icon.dart';
import 'package:dghub_ui/widgets/list_item/designs/list_item_radio.dart';
import 'package:dghub_ui/widgets/list_item/designs/list_item_simple.dart';
import 'package:flutter/material.dart';

class ListItem {
  Widget simple({
    required String label,
    String? subLabel,
  }) =>
      ListItemSimple(label: label, subLabel: subLabel);

  Widget icon({
    required IconData icon,
    required String label,
    String? subLabel,
  }) =>
      ListItemIcon(icon: icon, label: label, subLabel: subLabel);

  Widget radio(
          {required String label,
          String? subLabel,
          required Function() onTap}) =>
      ListItemRadio(onTap: onTap, label: label, subLabel: subLabel);
}
