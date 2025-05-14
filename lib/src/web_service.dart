import 'dart:html' as html;
import 'dart:async';
import 'package:flutter/material.dart';

class SafePlatformService {
  Future<void> closeAuthWindow() async {
    html.window.close();
  }

  Future addToSession(
    BuildContext context,
    dynamic authUser,
  ) async {
    try {
      if (authUser != null) {
        html.window.localStorage["firstName"] = authUser.firstName ?? "";
        html.window.localStorage["lastName"] = authUser.lastName ?? "";
        html.window.localStorage["displayName"] = authUser.displayName ?? "";
        html.window.localStorage["email"] = authUser.email ?? "";

        print("FIRST NAME : ${html.window.localStorage["firstName"]}");
        print("LAST NAME : ${html.window.localStorage["lastName"]}");
        print("DISPLAY NAME : ${html.window.localStorage["displayName"]}");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> fetchFromSession(BuildContext context) async {
    try {
      return {
        "firstName": html.window.localStorage["firstName"],
        "displayName": html.window.localStorage["displayName"],
        "email": html.window.localStorage["email"],
        "lastName": html.window.localStorage["lastName"]
      };
      // Add your function code here!
    } catch (e) {
      rethrow;
    }
  }

  Future openAuthWindow(
    BuildContext context,
    String? url,
  ) async {
    // Open a 600x600 window
    return html.window.open(url!, 'authWindow', 'width=600,height=600');
  }

  Future clearSession(BuildContext context) async {
    html.window.localStorage.remove("firstName");
    html.window.localStorage.remove("lastName");
    html.window.localStorage.remove("displayName");
    html.window.localStorage.remove("email");
  }
}
