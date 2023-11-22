import 'package:entregas/models/cargas_model.dart';
import 'package:entregas/settings.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CargasRepository {
  //
  //CRIA BANCO DE DADOS E ESTRUTURA DE TABELAS
  //
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) {
        return db.execute(CREATE_TABLES_SCRIPT);
      },
      version: 1,
    );
  }

  //
  //CRIA TABLE DE ACORDO COM O MODEL DEFINIDO
  //
  Future create(Cargas cargas) async {
    try {
      final Database db = await _getDatabase();
      await db.insert(TABLE_CARGAS, cargas.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (ex) {
      print(ex);
      return;
    }
  }
}
