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
    inativo = json['inativo'] == 0;
    superusuario = json['superusuario'] == 0;
    liberado = json['liberado'] == 1;
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['ordem'] = ordem;
    data['codigo'] = codigo;
    data['nome'] = nome;
    data['senha'] = senha;
    data['apelido'] = apelido;
    data['cargo'] = cargo;
    data['inativo'] = inativo;
    data['superusuario'] = superusuario;
    data['liberado'] = liberado;
    data['email'] = email;
    return data;
  }
}
