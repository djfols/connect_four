import 'package:flutter/material.dart';
import 'grid_cell6.dart';
import 'grid_cell1.dart';
import 'grid_cell2.dart';
import 'grid_cell3.dart';
import 'grid_cell4.dart';
import 'grid_cell5.dart';


class GridColumn3 extends StatelessWidget {
  final double width;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Color color6;

//  final Function onColumnPressed; add this with button

  GridColumn3({this.width, this.color1, this.color2, this.color3, this.color4, this.color5, this.color6});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GridCell1(
          height: width,
          width: width,
          circleColor: color1,
        ),
        GridCell2(
          height: width,
          width: width,
          circleColor: color2,
        ),
        GridCell3(
          height: width,
          width: width,
          circleColor: color3,
        ),
        GridCell4(
          height: width,
          width: width,
          circleColor: color4,
        ),
        GridCell5(
          height: width,
          width: width,
          circleColor: color5,
        ),
        GridCell6(
          height: width,
          width: width,
          circleColor: color6,
        ),
      ],
    );
  }
}
