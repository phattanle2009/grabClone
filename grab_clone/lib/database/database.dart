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
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'localDB.db');
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE Contact ('
          'id INTEGER PRIMARY KEY,'
          'full_name TEXT,'
          'phone_number TEXT'
          ')');
    });
  }

  newContact(ContactModel newContact) async {
    final db = await database;
    var table = await db.rawQuery('SELECT MAX(id)+1 as id FROM Contact');
    var id = table.first['id'] ?? 1;
    var raw = await db.rawInsert(
      'INSERT Into Contact (id,full_name,phone_number)'
      ' VALUES (?,?,?)',
      [id, newContact.fullName, newContact.phoneNumber],
    );
    return raw;
  }

  updateContact(ContactModel newContact) async {
    final db = await database;
    var res = await db.update('Contact', newContact.toMap(),
        where: 'id = ?', whereArgs: [newContact.id]);
    return res;
  }

  getContact(int id) async {
    final db = await database;
    var res = await db.query('Contact', where: 'id = ?', whereArgs: [id]);
    return res.isNotEmpty ? ContactModel.fromMap(res.first) : null;
  }

  deleteContact(int id) async {
    final db = await database;
    return db.delete('Contact', where: 'id = ?', whereArgs: [id]);
  }

  deleteAll() async {
    final db = await database;
    db.rawDelete('Delete * from Contact');
  }
}
