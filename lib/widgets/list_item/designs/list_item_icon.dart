import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ListItemIcon extends StatelessWidget {
  final String label;
  final String? subLabel;
  final IconData icon;
  const ListItemIcon(
      {required this.label, this.subLabel, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(overflow: TextOverflow.ellipsis)),
              if (subLabel != null)
                Text(subLabel!,
                    style: TextStyle(overflow: TextOverflow.ellipsis)),
            ],
          )
        ],
      ),
    );
  }
}
