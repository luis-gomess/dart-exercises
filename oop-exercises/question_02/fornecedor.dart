import 'pessoa.dart';

class Fornecedor extends Pessoa {
  double _valorCredito;
  double _valorDivida;

  Fornecedor({
    required String nome,
    required String endereco,
    required String telefone,
    required double valorCredito,
    required double valorDivida,
  })  : _valorCredito = valorCredito,
        _valorDivida = valorDivida,
        super.completo(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
        );

  double get valorCredito => _valorCredito;
  double get valorDivida => _valorDivida;

  set valorCredito(double valor) => _valorCredito = valor;
  set valorDivida(double valor) => _valorDivida = valor;

  double obterSaldo() {
    return _valorCredito - _valorDivida;
  }
}
