class Pessoa {
  String _nome;
  String _endereco;
  String _telefone;

  Pessoa()
      : _nome = '',
        _endereco = '',
        _telefone = '';

  Pessoa.comNome(String nome)
      : _nome = nome,
        _endereco = '',
        _telefone = '';

  Pessoa.completo({
    required String nome,
    required String endereco,
    required String telefone,
  })  : _nome = nome,
        _endereco = endereco,
        _telefone = telefone;

  String get nome => _nome;
  String get endereco => _endereco;
  String get telefone => _telefone;

  set nome(String valor) => _nome = valor;
  set endereco(String valor) => _endereco = valor;
  set telefone(String valor) => _telefone = valor;
}
