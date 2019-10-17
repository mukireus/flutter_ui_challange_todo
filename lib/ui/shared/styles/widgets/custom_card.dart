import 'package:flutter/material.dart';
import 'package:todo/design/custom_painter.dart';
import 'package:todo/ui/ui_helper.dart';

class CustomCard extends StatefulWidget {
  final String taskDescription;
  final String groupName;
  final bool done;

  const CustomCard({Key key, this.taskDescription, this.groupName, this.done})
      : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 15, 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
              height: UIHelper.dynamicHeight(200),
              width: UIHelper.dynamicWidth(1000),
              decoration: BoxDecoration(
                color: UIHelper.WHITE,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: UIHelper.SHADOW,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      3.0, // horizontal, move right 10
                      3.0, // vertical, move down 10
                    ),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: CustomPaint(painter: DrawCircle())),
                        Column(
                          children: <Widget>[
                            Text(
                              "Test",
                              style: TextStyle(
                                  color: UIHelper.TEXT_COLOR,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Group",
                              style: TextStyle(
                                  color: UIHelper.TEXT_COLOR_OPACITY,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
