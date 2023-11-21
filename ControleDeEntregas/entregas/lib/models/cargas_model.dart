import 'dart:convert';

class Cargas {
  final String? id;
  final String? numero;
  final String? quantidade_tarefas;
  final String? status;
  final String? peso_total;
  final String? volume_total;
  final String? motorista;

  Cargas({
    required this.id,
    required this.numero,
    required this.quantidade_tarefas,
    required this.status,
    required this.peso_total,
    required this.volume_total,
    required this.motorista,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory Cargas.fromJson(String source) =>
      Cargas.fromMap(json.decode(source) as Map<String, dynamic>);
}
