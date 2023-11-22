import 'dart:convert';

class Cargas {
  final String? id;
  final String? numero;
  final String? quantidade_tarefas;
  final String? status;
  final String? peso_total;
  final String? volume_total;
  final String? motorista;
  final double? km_inicial;
  final double? km_final;
  final DateTime? data_inicial;
  final DateTime? data_final;

  Cargas({
    required this.id,
    required this.numero,
    required this.quantidade_tarefas,
    required this.status,
    required this.peso_total,
    required this.volume_total,
    required this.motorista,
    required this.km_inicial,
    required this.km_final,
    required this.data_inicial,
    required this.data_final,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'numero': numero,
      'quantidade_tarefas': quantidade_tarefas,
      'status': status,
      'peso_total': peso_total,
      'volume_total': volume_total,
      'motorista': motorista,
      'km_inicial': km_inicial,
      'km_final': km_final,
      'data_inicial': data_inicial,
      'data_final': data_final
    };
  }

  factory Cargas.fromMap(Map<String, dynamic> map) {
    return Cargas(
      id: map['id'] != null ? map['id'] as String : null,
      numero: map['numero'] != null ? map['numero'] as String : null,
      quantidade_tarefas: map['quantidade_tarefas'] != null
          ? map['quantidade_tarefas'] as String
          : null,
      status: map['status'] != null ? map['status'] as String : null,
      peso_total:
          map['peso_total'] != null ? map['peso_total'] as String : null,
      volume_total:
          map['volume_total'] != null ? map['volume_total'] as String : null,
      motorista: map['motorista'] != null ? map['motorista'] as String : null,
      km_inicial: map['km_inicial'] != null ? map['km_inicial'] as double : 0,
      km_final: map['km_final'] != null ? map['km_final'] as double : 0,
      data_inicial: map['data_inicial'] != null
          ? map['data_inicial'] as DateTime
          : DateTime.now(),
      data_final: map['data_final'] != null
          ? map['data_final'] as DateTime
          : DateTime.now(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cargas.fromJson(String source) =>
      Cargas.fromMap(json.decode(source) as Map<String, dynamic>);
}
