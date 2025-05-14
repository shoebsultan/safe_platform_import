import 'package:flutter/material.dart';

class SafePlatformService {
  Future<void> closeAuthWindow() async {
    // Do nothing on mobile
    print('closeAuthWindow() called on non-web platform');
  }

  Future addToSession(
    BuildContext context,
    dynamic authUser,
  ) async {
    print('addToSession() called on non-web platform');
  }

  Future<Map<String, dynamic>> fetchFromSession(BuildContext context) async {
    print('fetchFromSession() called on non-web platform');
    return {};
  }

  Future openAuthWindow(
    BuildContext context,
    String? url,
  ) async {
    print('openAuthWindow() called on non-web platform');
    // Do nothing on mobile
  }

  Future clearSession(BuildContext context) async {
    print('clearSession() called on non-web platform');
    // Do nothing on mobile
  }
}
