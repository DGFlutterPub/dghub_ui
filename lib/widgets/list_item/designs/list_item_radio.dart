import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ListItemRadio extends StatelessWidget {
  final String label;
  final String? subLabel;
  final Function() onTap;
  const ListItemRadio(
      {required this.label, this.subLabel, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.radio_button_off),
            SizedBox(
              width: 15,
            ),
            Text(label, style: TextStyle(overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
    );
  }
}
