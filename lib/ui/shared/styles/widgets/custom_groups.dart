import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/ui/ui_helper.dart';

class CustomGroups extends StatelessWidget {
  final String groupName;
  final String taskCount;
  final String completeTask;
  final Color groupColor;

  const CustomGroups(
      {Key key, this.groupName, this.taskCount, this.completeTask, this.groupColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil()..init(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
                width: UIHelper.dynamicWidth(370),
                height: UIHelper.dynamicHeight(450),
                decoration: BoxDecoration(
                  color: UIHelper.WHITE,
                  borderRadius: BorderRadius.circular(30),
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
                  padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Text((this.taskCount) + " Task",
                            style: TextStyle(
                                fontSize: 17, color: UIHelper.TEXT_COLOR)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          this.groupName,
                          style: TextStyle(
                              fontSize: 20,
                              color: UIHelper.PRIMARY_COLOR,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                        child: LinearProgressIndicator(
                          backgroundColor: UIHelper.BLUE,
                          // TODO -> Random group color
                          value: 1 / 5,
                          // TODO -> Value değişimi çalışmıyor.
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
