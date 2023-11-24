const String DATABASE_NAME = "DBEentregas.db";
const String TABLE_CARGAS = "cargas";
const String TABLE_FUNCIONARIOS = "funcionarios";
const String TABLE_MOTORISTA = "motorista";
const String CREATE_TABLES_SCRIPT = """
  CREATE TABLE cargas (
    id INTEGER PRIMARY KEY,
    numero TEXT,
    quantidade_tarefas INTEGER,
    status TEXT,
    peso_total NUMERIC,
    volume_total NUMERIC,
    motorista TEXT,
    km_inicial NUMERIC,
    km_final NUMERIC,
    data_inicial TEXT,
    data_final TEXT,
    hora_inicial  TEXT,
    hora_final TEXT     
  );


   CREATE TABLE motorista (
    id	INTEGER,
    nome	TEXT,
    PRIMARY KEY(id)
  );

""";

const String BASE_URL = "http://192.168.2.220:8082/api/v1";
