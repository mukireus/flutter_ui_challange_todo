import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:todo/core/model/group.dart';

class FirebaseService {
  String _baseUrl = "";

  static FirebaseService _instance = FirebaseService._privateConstructor();
  FirebaseService._privateConstructor() {
    _baseUrl = "https://to-do-b00ac.firebaseio.com/";
  }

  static FirebaseService getInstance() {
    if (_instance == null)
      return FirebaseService._privateConstructor();
    else
      return _instance;
  }

  Future<List<Group>> getGroups() async {
    final response = await http.get("$_baseUrl/groups.json");

    final jsonResponse = json.decode(response.body);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final groupList = GroupList.fromJsonList(jsonResponse);
        return groupList.groups;
        break;
      case HttpStatus.unauthorized:
        Logger().e(jsonResponse);
        break;
    }
    Logger().e(jsonResponse);
    return Future.error(jsonResponse);
  }
}
