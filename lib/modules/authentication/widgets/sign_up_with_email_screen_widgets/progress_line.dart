import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  final Color statusColour;
  ProgressLine({@required this.statusColour});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      color: statusColour,
      border: Border(
        top: BorderSide(width: 1.0, color: statusColour),
        left: BorderSide(width: 80.0, color: statusColour),
        right: BorderSide(width: 90.0, color: statusColour),
        bottom: BorderSide(width: 1.0, color: statusColour),
      ),
    ));
  }
}
