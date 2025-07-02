import 'package:flutter/foundation.dart';
import '../models/user.dart';
import '../services/api_service.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [];
  List<User> _localUsers = [];  // For newly added users

  List<User> get users => [..._users, ..._localUsers];

  Future<void> fetchUsers() async {
    _users = await ApiService.fetchUsers();
    notifyListeners();
  }

  void addUser(User newUser) {
    _localUsers.add(newUser);
    notifyListeners();
  }
}