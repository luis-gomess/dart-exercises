import 'operario.dart';

void main() {
  final operario = Operario(
    nome: 'Eduardo',
    endereco: 'Rua E, 500',
    telefone: '(85) 96666-5555',
    codigoSetor: 30,
    salarioBase: 2500.0,
    imposto: 8.0,
    valorProducao: 10000.0,
    comissao: 5.0,
  );

  print('Operário: ${operario.nome}');
  print('Salário base: R\$ ${operario.salarioBase.toStringAsFixed(2)}');
  print('Valor produzido: R\$ ${operario.valorProducao.toStringAsFixed(2)}');
  print('Comissão: ${operario.comissao.toStringAsFixed(2)}%');
  print('Salário final: R\$ ${operario.calcularSalario().toStringAsFixed(2)}');
}
