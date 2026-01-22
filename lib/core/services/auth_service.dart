// ignore_for_file: unused_field

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  final _storage = GetStorage();
  
  static const String _accountTypeKey = 'account_type';
  static const String _userEmailKey = 'user_email';
  static const String _isLoggedInKey = 'is_logged_in';
  static const String _userIdKey = 'user_id';

  void setAccountType(String type) {
    _storage.write(_accountTypeKey, type);
  }

  String? getAccountType() {
    return _storage.read<String>(_accountTypeKey);
  }

  void login(String email, String? accountType) {
    _storage.write(_userEmailKey, email);
    if (accountType != null) {
      _storage.write(_accountTypeKey, accountType);
    }
    _storage.write(_isLoggedInKey, true);
  }

  bool isLoggedIn() {
    return _storage.read<bool>(_isLoggedInKey) ?? false;
  }

  String getPanelRoute() {
    String? accountType = getAccountType();
    
    switch (accountType) {
      case 'Buy a Product':
        return '/customerBottomNavigationView';
      case 'Sell Your Product':
        return '/upgradeScreen';
        // return '/sellerBottomNavigationView';
      case 'Be our Delivery Partner':
        return '/deliveryBottomNavigationView';
      default:
        return '/customerBottomNavigationView';
    }
  }

  void logout() {
    _storage.erase();
  }

  String? getUserEmail() {
    return _storage.read<String>(_userEmailKey);
  }
}
