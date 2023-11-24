import 'package:entregas/models/funcionarios_model.dart';
import 'package:entregas/settings.dart';
import 'package:sqflite/sqflite.dart';

class FuncionariosProvider {
  Database? db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(CREATE_TABLES_SCRIPT);
    });
  }

  Future<Funcionarios> insert(Funcionarios funcionario) async {
    funcionario.ordem = await db?.insert(
      TABLE_FUNCIONARIOS,
      funcionario.toJson(),
    );
    return funcionario;
  }
}
