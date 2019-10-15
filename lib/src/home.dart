import 'package:flutter/material.dart';
import 'package:todo/design/ui_helper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: () {},
          child: new Icon(Icons.add),
        ),
        backgroundColor: UIHelper.PRIMARY_COLOR,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: UIHelper.PRIMARY_COLOR,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'To Do',
                  style: TextStyle(
                      color: UIHelper.WHITE,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30,
                  tooltip: "Search",
                  color: UIHelper.WHITE,
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  iconSize: 30,
                  tooltip: "Notification",
                  color: UIHelper.WHITE,
                  onPressed: () {},
                )
              ],
            ),
            SliverFillRemaining(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: UIHelper.WHITE,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(75.0))),
              ),
            )
          ],
        ));
  }
}
