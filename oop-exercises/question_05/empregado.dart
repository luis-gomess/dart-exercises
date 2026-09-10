import 'pessoa.dart';

class Empregado extends Pessoa {
  int _codigoSetor;
  double _salarioBase;
  double _imposto;

  Empregado({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
  })  : _codigoSetor = codigoSetor,
        _salarioBase = salarioBase,
        _imposto = imposto,
        super.completo(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
        );

  int get codigoSetor => _codigoSetor;
  double get salarioBase => _salarioBase;
  double get imposto => _imposto;

  set codigoSetor(int valor) => _codigoSetor = valor;
  set salarioBase(double valor) => _salarioBase = valor;
  set imposto(double valor) => _imposto = valor;

  double calcularSalario() {
    return _salarioBase - (_salarioBase * _imposto / 100);
  }
}
