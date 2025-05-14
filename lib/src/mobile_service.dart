import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SafePlatformService {
  Future<void> closeAuthWindow() async {
    // Do nothing on mobile
    if (kDebugMode) {
      print('closeAuthWindow() called on non-web platform');
    }
  }

  Future addToSession(
    BuildContext context,
    dynamic authUser,
  ) async {
    if (kDebugMode) {
      print('addToSession() called on non-web platform');
    }
  }

  Future<Map<String, dynamic>> fetchFromSession(BuildContext context) async {
    if (kDebugMode) {
      print('fetchFromSession() called on non-web platform');
    }
    return {};
  }

  Future openAuthWindow(
    BuildContext context,
    String? url,
  ) async {
    if (kDebugMode) {
      print('openAuthWindow() called on non-web platform');
    }
    // Do nothing on mobile
  }

  Future clearSession(BuildContext context) async {
    if (kDebugMode) {
      print('clearSession() called on non-web platform');
    }
    // Do nothing on mobile
  }
}
