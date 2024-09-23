// ignore_for_file: avoid_types_as_parameter_names

import 'package:get/get.dart';
import 'package:socialapp/Model/Credential/userCredential.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseControl extends GetxController {
  DatabaseControl._();

  static Database? _database;

  static Future<DatabaseControl> getInstance() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

// Delete the database
//     await deleteDatabase(path);

    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE Users (id INTEGER PRIMARY KEY AUTOINCREMENT, firstname TEXT, lastname TEXT, gender TEXT, number TEXT, username TEXT, password TEXT)');
    });
    return DatabaseControl._();
  }

  Future<void> registerUsers(Usercredential credential) async {
    String sql =
        "INSERT INTO Users (`firstname`,`lastname`,`gender`,`number`,`username`,`password`) VALUES('${credential.firstName}','${credential.lastName}','${credential.gender}','${credential.number}','${credential.userName}','${credential.pswd}')";
    await _database?.execute(sql);
  }

  Future<Usercredential?> logInUsers({required String username, required String pswd}) async{
    String sql =
        "SELECT * FROM Users WHERE `username` = '$username' AND `password` = '$pswd'";
    List<Map<String, Object?>> data = await _database!.rawQuery(sql);
    if (data.isNotEmpty) {
      return Usercredential.fromJson(data[0]);
  }}
}
