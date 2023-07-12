import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../../components/tools.dart';

class BottomSheetDesign2 extends StatelessWidget {
  final Widget child;
  final String title;
  final bool hideTitle;
  final bool hideCloseIcon;
  final bool hideTop;
  const BottomSheetDesign2(
      {required this.child,
      required this.hideCloseIcon,
      required this.hideTitle,
      required this.title,
      this.hideTop = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //DGTools.navBarColor(color: Theme.of(context).backgroundColor);
    return Container(
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            hideTitle
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Marquee(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
            AnimatedPadding(
                padding:
                    EdgeInsets.only(bottom: Tools().keyboardHeight(context)),
                duration: Duration(milliseconds: 500),
                child: child)
          ],
        ),
      ),
    );
  }
}
