import 'empregado.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao;

  Operario({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double valorProducao,
    required double comissao,
  })  : _valorProducao = valorProducao,
        _comissao = comissao,
        super(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
          codigoSetor: codigoSetor,
          salarioBase: salarioBase,
          imposto: imposto,
        );

  double get valorProducao => _valorProducao;
  double get comissao => _comissao;

  set valorProducao(double valor) => _valorProducao = valor;
  set comissao(double valor) => _comissao = valor;

  @override
  double calcularSalario() {
    return super.calcularSalario() + (_valorProducao * _comissao / 100);
  }
}
