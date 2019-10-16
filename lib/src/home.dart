import 'package:flutter/material.dart';
import 'package:todo/core/firebase_service.dart';
import 'package:todo/core/model/group.dart';
import 'package:todo/ui/shared/styles/widgets/custom_groups.dart';
import 'package:todo/ui/ui_helper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseService service = FirebaseService.getInstance();
  List<Group> groupList = [];
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
                titlePadding: EdgeInsets.fromLTRB(35, 0, 0, 16),
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
                        BorderRadius.only(topLeft: Radius.elliptical(50, 60))),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: FutureBuilder(
                      future: service.getGroups(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.done:
                            if (snapshot.hasData) groupList = snapshot.data;
                            return _listView;
                            break;
                          case ConnectionState.none:
                            // TODO: Handle this case.
                            break;
                          case ConnectionState.waiting:
                            // TODO: Handle this case.
                            break;
                          case ConnectionState.active:
                            // TODO: Handle this case.
                            break;
                          default:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                        }
                      },
                    )),
              ),
            )
          ],
        ));
  }

  Widget get _listView => ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: groupList.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => CustomGroups(
          groupName: groupList[index].groupName,
          value: groupList[index].value,
          taskCount: groupList[index].taskCount,
        ),
      );
}
