import 'package:flutter/material.dart';
import 'package:connectfour/components/grid_column.dart';
import 'package:connectfour/components/grid_column1.dart';
import 'package:connectfour/components/grid_column2.dart';
import 'package:connectfour/components/grid_column3.dart';
import 'package:connectfour/components/grid_column4.dart';
import 'package:connectfour/components/grid_column5.dart';
import 'package:connectfour/components/grid_column6.dart';
import 'utilities/brain.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyHomePage(),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.white;
  int discNumber = 0;

  Brain brain = Brain();

  List<Color> gridColorList = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  int column1ClickCount = 6;
  int column2ClickCount = 12;
  int column3ClickCount = 18;
  int column4ClickCount = 24;
  int column5ClickCount = 30;
  int column6ClickCount = 36;
  int columnClickCount = 0;
  int clickCounter = 1;

  Color getTurnColor() {
    if (clickCounter.isEven) {
      return Colors.red[600];
    } else {
      return Colors.yellow[600];
    }
  }

  void playSound() {
    final player = AudioCache();
    player.play('dropPiece.wav');
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
//            SizedBox(
//              height: 10,
//            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: width / 8,
                  width: width / 8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: getTurnColor(),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Column(
                    children: <Widget>[
                      Text(
                        brain.getDiscColorName(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Turn',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (columnClickCount < 6) {
                      playSound();
                      columnClickCount++;
                      clickCounter++;
                      print(columnClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[columnClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn(
                    width: width,
                    color1: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[1],
                    color2: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[2],
                    color3: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[3],
                    color4: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[4],
                    color5: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[5],
                    color6: (columnClickCount == 0)
                        ? Colors.white
                        : gridColorList[6],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column1ClickCount < 12) {
                      playSound();
                      column1ClickCount++;
                      clickCounter++;
                      print(column1ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column1ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    };
                  },
                  child: GridColumn1(
                    width: width,
                    color1: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[7],
                    color2: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[8],
                    color3: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[9],
                    color4: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[10],
                    color5: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[11],
                    color6: (column1ClickCount == 6)
                        ? Colors.white
                        : gridColorList[12],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column2ClickCount < 18) {
                      playSound();
                      column2ClickCount++;
                      clickCounter++;
                      print(column2ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column2ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn2(
                    width: width,
                    color1: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[13],
                    color2: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[14],
                    color3: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[15],
                    color4: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[16],
                    color5: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[17],
                    color6: (column2ClickCount == 12)
                        ? Colors.white
                        : gridColorList[18],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column3ClickCount < 24) {
                      playSound();
                      column3ClickCount++;
                      clickCounter++;
                      print(column3ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column3ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn3(
                    width: width,
                    color1: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[19],
                    color2: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[20],
                    color3: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[21],
                    color4: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[22],
                    color5: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[23],
                    color6: (column3ClickCount == 18)
                        ? Colors.white
                        : gridColorList[24],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column4ClickCount < 30) {
                      playSound();
                      column4ClickCount++;
                      clickCounter++;
                      print(column4ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column4ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn4(
                    width: width,
                    color1: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[25],
                    color2: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[26],
                    color3: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[27],
                    color4: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[28],
                    color5: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[29],
                    color6: (column4ClickCount == 24)
                        ? Colors.white
                        : gridColorList[30],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column5ClickCount < 36) {
                      playSound();
                      column5ClickCount++;
                      clickCounter++;
                      print(column5ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column5ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn5(
                    width: width,
                    color1: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[31],
                    color2: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[32],
                    color3: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[33],
                    color4: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[34],
                    color5: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[35],
                    color6: (column5ClickCount == 30)
                        ? Colors.white
                        : gridColorList[36],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (column6ClickCount < 42) {
                      playSound();
                      column6ClickCount++;
                      clickCounter++;
                      print(column6ClickCount);
                      brain.getDiscColor();
                      setState(() {
                        gridColorList[column6ClickCount] = brain.discColor;
                      });
                    } else {
                      print('COLUMN FULL!');
                    }
                    ;
                  },
                  child: GridColumn6(
                    width: width,
                    color1: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[37],
                    color2: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[38],
                    color3: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[39],
                    color4: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[40],
                    color5: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[41],
                    color6: (column6ClickCount == 36)
                        ? Colors.white
                        : gridColorList[42],
                  ),
                ),
              ],
            ),
            Transform.rotate(
              angle: 90 * pi / 180,
              child: FlatButton(
                  color: Colors.red[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black, width: 2)),
                  onPressed: () {
                    brain.resetGame();
                    setState(() {
                      columnClickCount = 0;
                      column1ClickCount = 6;
                      column2ClickCount = 12;
                      column3ClickCount = 18;
                      column4ClickCount = 24;
                      column5ClickCount = 30;
                      column6ClickCount = 36;
                      clickCounter = 1;
                      gridColorList[0] = brain.discColor;
                    });
                    gridColorList.replaceRange(0, 42, [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                    ]);
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Reset',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Game',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )),
            ),
//            SizedBox(
//              height: 10,
//            ),
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
