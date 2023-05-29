import 'dart:io';
import 'package:grab_clone/database/database.dart';
import 'package:grab_clone/constant/error_code.dart';
import 'package:grab_clone/model/contact_model.dart';
import 'package:grab_clone/utility/app_exception.dart';

Future<List<ContactModel>> getAllContacts() async {
  try {
    final db = await DBProvider.db.database;
    var res = await db.query("Contact");
    List<ContactModel> list =
        res.isNotEmpty ? res.map((c) => ContactModel.fromMap(c)).toList() : [];
    return list;
  } on SocketException {
    throw AppException(socketErrorCode, "Something went wrong with network.");
  }
}
