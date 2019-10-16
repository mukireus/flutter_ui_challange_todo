import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/ui/ui_helper.dart';

class CustomGroups extends StatelessWidget {
  final String groupName;
  final int taskCount;
  final int value;

  const CustomGroups({Key key, this.groupName, this.taskCount, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil()..init(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
                width: UIHelper.dynamicWidth(400),
                height: UIHelper.dynamicHeight(450),
                decoration: BoxDecoration(
                  color: UIHelper.WHITE,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: UIHelper.SHADOW,
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          1.0, // has the effect of extending the shadow
                      offset: Offset(
                        3.0, // horizontal, move right 10
                        3.0, // vertical, move down 10
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text((this.value).toString() + " Görev",
                            style: TextStyle(
                                fontSize: 20, color: UIHelper.TEXT_COLOR)),
                      ),
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 25,
                            color: UIHelper.BLUE,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                        child: LinearProgressIndicator(
                          backgroundColor: UIHelper.BLUE,
                          value: 2 / 10,
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
