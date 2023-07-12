import 'package:flutter/material.dart';

class DialogDesignSimple extends StatelessWidget {
  final String title;
  final Widget child;
  final double maxWidth;
  const DialogDesignSimple(
      {required this.maxWidth,
      required this.title,
      required this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
        backgroundColor: theme.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)), //this right here
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        CloseButton()
                      ],
                    ),
                  ),
                  child
                ],
              ),
            ],
          ),
        ));
  }
}
