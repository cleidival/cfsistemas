import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Tarefas {
  final String? id;
  final String? status;
  final String? nome;
  final String? agendamento;
  final String? endereco;
  final String? numero;
  final String? bairro;
  final String? cidade;
  final String? uf;
  final String? peso;
  final String? volume;

  Tarefas({
    required this.id,
    required this.status,
    required this.nome,
    required this.agendamento,
    required this.endereco,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.uf,
    required this.peso,
    required this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'nome': nome,
      'agendamento': agendamento,
      'endereco': endereco,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'uf': uf,
      'peso': peso,
      'volume': volume,
    };
  }

  factory Tarefas.fromMap(Map<String, dynamic> map) {
    return Tarefas(
      id: map['id'] != null ? map['id'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      agendamento:
          map['agendamento'] != null ? map['agendamento'] as String : null,
      endereco: map['endereco'] != null ? map['endereco'] as String : null,
      numero: map['numero'] != null ? map['numero'] as String : null,
      bairro: map['bairro'] != null ? map['bairro'] as String : null,
      cidade: map['cidade'] != null ? map['cidade'] as String : null,
      uf: map['uf'] != null ? map['uf'] as String : null,
      peso: map['peso'] != null ? map['peso'] as String : null,
      volume: map['volume'] != null ? map['volume'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tarefas.fromJson(String source) =>
      Tarefas.fromMap(json.decode(source) as Map<String, dynamic>);
}
