import 'empregado.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double valorVendas,
    required double comissao,
  })  : _valorVendas = valorVendas,
        _comissao = comissao,
        super(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
          codigoSetor: codigoSetor,
          salarioBase: salarioBase,
          imposto: imposto,
        );

  double get valorVendas => _valorVendas;
  double get comissao => _comissao;

  set valorVendas(double valor) => _valorVendas = valor;
  set comissao(double valor) => _comissao = valor;

  @override
  double calcularSalario() {
    return super.calcularSalario() + (_valorVendas * _comissao / 100);
  }
}
