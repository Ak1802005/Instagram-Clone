// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/database_control.dart';
import 'package:socialapp/Controller/local-storage.dart';
import 'package:socialapp/Model/Credential/userCredential.dart';

class AuthControl extends GetxController {
  DatabaseControl? _databaseControl;
  Usercredential? usercredential;
  LocalStorage? storage;
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final number = TextEditingController();
  final username = TextEditingController();
  final pswd = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    currentUser();
  }

  Future<Usercredential?> currentUser() async {
    _databaseControl = await DatabaseControl.getInstance();
    storage = await LocalStorage.initialize();
    usercredential = storage?.getCurrentUser(key: 'user');
    return usercredential;
  }

  Future<void> registerUser(
      BuildContext context, Usercredential credential) async {
    if (number.text.trim().isNotEmpty &&
        firstname.text.trim().isNotEmpty &&
        lastname.text.trim().isNotEmpty &&
        username.text.trim().isNotEmpty &&
        pswd.text.trim().isNotEmpty) {
      await _databaseControl?.registerUsers(credential);
      Navigator.pushNamed(context, ConstString.login.value);
      firstname.clear();
      lastname.clear();
      number.clear();
      username.clear();
      pswd.clear();
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(ConstString.registerErrorTitle.value,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.red)),
            elevation: 30,
            alignment: AlignmentDirectional.center,
            content: Text(ConstString.registerErrorContent.value,
                style: Theme.of(context).textTheme.labelLarge),
          );
        },
      );
    }
  }

  Future<void> loginUser(BuildContext context) async {
    {
      if (username.text.trim().isNotEmpty && pswd.text.trim().isNotEmpty) {
        usercredential = await _databaseControl?.logInUsers(
            username: username.text.trim(), pswd: pswd.text.trim());
        Navigator.pushReplacementNamed(context, ConstString.home.value);
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(ConstString.loginErrorTitle.value,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.red)),
              elevation: 30,
              alignment: AlignmentDirectional.center,
              content: Text(ConstString.loginErrorContent.value,
                  style: Theme.of(context).textTheme.labelLarge),
            );
          },
        );
      }
    }
  }
}
