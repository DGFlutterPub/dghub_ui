import 'package:flutter/material.dart';

import '../../components/tools.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Card(
          color: theme.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.close,
              color: Tools().isDarkTheme(context) ? Colors.white : Colors.black,
              size: 20,
            ),
          )),
    );
  }
}
