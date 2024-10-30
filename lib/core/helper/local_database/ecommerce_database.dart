import 'package:sqflite/sqflite.dart';

import '../../models/fruits_combo_model/fruit_combo_model.dart';

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

    await db.execute("""
      CREATE TABLE IF NOT EXISTS Fruits (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        description TEXT NOT NULL,
        imagePath TEXT NOT NULL,
        type TEXT NOT NULL,
        price INTEGER NOT NULL,
        color INTEGER NOT NULL
        )
    """);

    await db.execute("""
      CREATE TABLE IF NOT EXISTS Basket (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        imagePath TEXT NOT NULL,
        numOfOrder INTEGER NOT NULL,
        totalPrice INTEGER NOT NULL
        )
    """);
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

  // insert into table fruits
  Future<void> insertInFruitsTable(FruitComboModel fruitModelCompo) async {
    final db = await database; // Ensure database is initialized
    await db.insert(
      'Fruits',
      fruitModelCompo.toJson(), // Handles duplicates
    );
  }

  // get from table fruits
  Future<List<FruitComboModel>> getFruitsData() async {
    final db = await database;
    List<Map<String, dynamic>> fruitsData = await db.query('Fruits');
    List<FruitComboModel> fruits =
        fruitsData.map((fruit) => FruitComboModel.fromJson(fruit)).toList();
    return fruits;
  }

  // search fruits using name
  Future<List<FruitComboModel>> getSearchFruits(String name) async {
    final db = await database;
    List<Map<String, dynamic>> fruitsData = await db.query('Fruits',
        where: 'LOWER(name) LIKE LOWER(?)', whereArgs: ['%$name%']);
    List<FruitComboModel> fruits =
        fruitsData.map((fruit) => FruitComboModel.fromJson(fruit)).toList();
    return fruits;
  }

  Future<List<FruitComboModel>> getFruitsByType(String type) async {
    final db = await database;
    List<Map<String, dynamic>> fruitsData = await db
        .query('Fruits', where: 'LOWER(type) = LOWER(?)', whereArgs: [type]);
    List<FruitComboModel> fruits =
        fruitsData.map((fruit) => FruitComboModel.fromJson(fruit)).toList();
    return fruits;
  }

  Future<void> deleteAllData() async {
    final db = await database; // Ensure database is initialized
    await db.delete('Fruits');
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }

  Future<FruitComboModel> getFruitItemById(int id) async {
    final db = await database;
    List<Map<String, dynamic>> fruitsData =
        await db.query('Fruits', where: 'id = ?', whereArgs: [id]);
    List<FruitComboModel> fruits =
        fruitsData.map((fruit) => FruitComboModel.fromJson(fruit)).toList();
    return fruits.first;
  }

  Future<void> insertInBasketTable({
    required String name,
    required String imagePath,
    required int numOfOrder,
    required int totalPrice,
  }) async {
    final db = await database; // Ensure database is initialized
    await db.insert(
      'Basket',
      {
        'name': name,
        'imagePath': imagePath,
        'numOfOrder': numOfOrder,
        'totalPrice': totalPrice
      }, // Handles duplicates
    );
  }
}
