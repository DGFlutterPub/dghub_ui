import 'package:flutter/material.dart';

class ListItemSimple extends StatelessWidget {
  final String label;
  final String? subLabel;
  const ListItemSimple({required this.label, this.subLabel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(),
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
