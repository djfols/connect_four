import 'package:flutter/material.dart';

class GridCell5 extends StatelessWidget {
  final double height;
  final double width;
  final Color circleColor;

  GridCell5({this.height, this.width, this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: width / 6,
          width: width / 6,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue[600],
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: width / 8,
              width: width / 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
