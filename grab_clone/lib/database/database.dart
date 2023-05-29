import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:grab_clone/model/contact_model.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "localDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Contact ("
          "id INTEGER PRIMARY KEY,"
          "full_name TEXT,"
          "phone_number TEXT,"
          ")");
    });
  }

  newContact(ContactModel newContact) async {
    final db = await database;
    //get the biggest id in the table
    var table = await db.rawQuery("SELECT MAX(id)+1 as id FROM Contact");
    if (table.first["id"] != null) {
      var id = table.first["id"];
      //insert to the table using the new id
      var raw = await db.rawInsert(
        "INSERT Into Contact (id,full_name,phone_number)"
        " VALUES (?,?,?)",
        [id, newContact.fullName, newContact.phoneNumber],
      );
      return raw;
    }
  }

  blockOrUnblock(ContactModel contact) async {
    final db = await database;
    ContactModel blocked = ContactModel(
        id: contact.id,
        fullName: contact.fullName,
        phoneNumber: contact.phoneNumber);
    var res = await db.update("Contact", blocked.toMap(),
        where: "id = ?", whereArgs: [contact.id]);
    return res;
  }

  updateContact(ContactModel newContact) async {
    final db = await database;
    var res = await db.update("Contact", newContact.toMap(),
        where: "id = ?", whereArgs: [newContact.id]);
    return res;
  }

  getContact(int id) async {
    final db = await database;
    var res = await db.query("Contact", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? ContactModel.fromMap(res.first) : null;
  }

  Future<List<ContactModel>> getBlockedContacts() async {
    final db = await database;

    print("works");
    // var res = await db.rawQuery("SELECT * FROM Contact WHERE blocked=1");
    var res = await db.query("Contact", where: "blocked = ? ", whereArgs: [1]);

    List<ContactModel> list =
        res.isNotEmpty ? res.map((c) => ContactModel.fromMap(c)).toList() : [];
    return list;
  }

  Future<List<ContactModel>> getAllContacts() async {
    final db = await database;
    var res = await db.query("Contact");
    List<ContactModel> list =
        res.isNotEmpty ? res.map((c) => ContactModel.fromMap(c)).toList() : [];
    return list;
  }

  deleteContact(int id) async {
    final db = await database;
    return db.delete("Contact", where: "id = ?", whereArgs: [id]);
  }

  deleteAll() async {
    final db = await database;
    db.rawDelete("Delete * from Contact");
  }
}