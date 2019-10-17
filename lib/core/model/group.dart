class Group {
  String groupName;
  int taskCount;
  int completeTask;
  String key;
  Group({this.groupName, this.taskCount, this.completeTask});

  Group.fromJson(Map<String, dynamic> json) {
    groupName = json['groupName'];
    taskCount = json['taskCount'];
    completeTask = json['completeTask'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupName'] = this.groupName;
    data['taskCount'] = this.taskCount;
    data['doneCount'] = this.completeTask;
    return data;
  }
}

class GroupList {
  List<Group> groups = [];

  GroupList.fromJsonList(Map completeTask) {
    completeTask.forEach((key, completeTask) {
      var group = Group.fromJson(completeTask);
      group.key = key;
      groups.add(group);
    });
  }
}
