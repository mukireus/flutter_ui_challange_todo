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
        backgroundColor: UIHelper.PRIMARY_COLOR,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(UIHelper.Space25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30,
                    color: UIHelper.WHITE,
                    onPressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.notifications),
                        iconSize: 30,
                        color: UIHelper.WHITE,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: UIHelper.Space40),
              child: Text(
                "To Do",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: UIHelper.WHITE,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: UIHelper.WHITE,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0))),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: <Widget>[],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
