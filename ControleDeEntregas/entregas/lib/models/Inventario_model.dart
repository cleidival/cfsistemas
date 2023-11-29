class InventarioTiModel {
  final String id;
  final String parecer_shx;
  final String numero_ativo;
  final String loja;
  final String disco;
  final String windows;
  final String tamanho;
  final String livre;
  final String ram;
  final String processador;
  final String nucleos;
  final String ip_final;
  final String usuario;
  final String setor;

  InventarioTiModel({
    this.id = '',
    required this.parecer_shx,
    required this.numero_ativo,
    required this.loja,
    required this.disco,
    required this.windows,
    required this.tamanho,
    required this.livre,
    required this.ram,
    required this.processador,
    required this.nucleos,
    required this.ip_final,
    required this.usuario,
    required this.setor,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'parecer_shx': parecer_shx,
        'numero_ativo': numero_ativo,
        'loja': loja,
        'disco': disco,
        'windows': windows,
        'tamanho': tamanho,
        'livre': livre,
        'ram': ram,
        'processador': processador,
        'nucleos': nucleos,
        'ip_final': ip_final,
        'usuario': usuario,
        'setor': setor,
      };
  
}
