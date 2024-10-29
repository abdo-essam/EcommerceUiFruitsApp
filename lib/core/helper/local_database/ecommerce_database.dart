import 'package:sqflite/sqflite.dart';

class EcommerceDatabase {
  static Database? _database;

  static final EcommerceDatabase instance = EcommerceDatabase._init();

  EcommerceDatabase._init();

  Future<Database> get database async {
    _database ??= await openDatabase('ecommerce.db',
          version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade);
    return _database!;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      """
      CREATE TABLE IF NOT EXISTS Authentication (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    """,
    );
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      await _onCreate(db, newVersion);
    }
  }

  Future<void> insertNameAuthentication(String name) async {
    final db = await database;
    await db.insert(
      'Authentication',
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }


  Future<String> getLastAuthenticationName() async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(
      'Authentication',
      orderBy: 'id DESC',
      // this return number of row , so I want last row (order by id desc) with last name added
      limit: 1,
    );
    return result.first['name'] as String;
  }
}
