import 'empregado.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double ajudaDeCusto,
  })  : _ajudaDeCusto = ajudaDeCusto,
        super(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
          codigoSetor: codigoSetor,
          salarioBase: salarioBase,
          imposto: imposto,
        );

  double get ajudaDeCusto => _ajudaDeCusto;

  set ajudaDeCusto(double valor) => _ajudaDeCusto = valor;

  @override
  double calcularSalario() {
    return super.calcularSalario() + _ajudaDeCusto;
  }
}
