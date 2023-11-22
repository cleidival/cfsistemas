import 'dart:convert';

class Funcionarios {
  int? ordem;
  int? codigo;
  String? nome;
  String? senha;
  String? apelido;
  String? cargo;
  bool? inativo;
  bool? superusuario;
  bool? liberado;
  String? email;

  Funcionarios(
      {this.ordem,
      this.codigo,
      this.nome,
      this.senha,
      this.apelido,
      this.cargo,
      this.inativo,
      this.superusuario,
      this.liberado,
      this.email});

  Funcionarios.fromJson(Map<String, dynamic> json) {
    ordem = json['ordem'];
    codigo = json['codigo'];
    nome = json['nome'];
    senha = json['senha'];
    apelido = json['apelido'];
    cargo = json['cargo'];
    inativo = json['inativo'];
    superusuario = json['superusuario'];
    liberado = json['liberado'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ordem'] = this.ordem;
    data['codigo'] = this.codigo;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    data['apelido'] = this.apelido;
    data['cargo'] = this.cargo;
    data['inativo'] = this.inativo;
    data['superusuario'] = this.superusuario;
    data['liberado'] = this.liberado;
    data['email'] = this.email;
    return data;
  }
}
