class Group {
  String groupName;
  int taskCount;
  int value;
  String key;
  Group({this.groupName, this.taskCount, this.value});

  Group.fromJson(Map<String, dynamic> json) {
    groupName = json['groupName'];
    taskCount = json['taskCount'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupName'] = this.groupName;
    data['taskCount'] = this.taskCount;
    data['value'] = this.value;
    return data;
  }
}

class GroupList {
  List<Group> groups = [];

  GroupList.fromJsonList(Map value) {
    value.forEach((key, value) {
      var group = Group.fromJson(value);
      group.key = key;
      groups.add(group);
    });
  }
}
