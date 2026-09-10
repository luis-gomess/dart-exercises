import 'empregado.dart';

void main() {
  final empregado = Empregado(
    nome: 'Carlos',
    endereco: 'Rua B, 200',
    telefone: '(85) 98888-2222',
    codigoSetor: 10,
    salarioBase: 3000.0,
    imposto: 10.0,
  );

  print('Empregado: ${empregado.nome}');
  print('Setor: ${empregado.codigoSetor}');
  print('Salário base: R\$ ${empregado.salarioBase.toStringAsFixed(2)}');
  print('Imposto: ${empregado.imposto.toStringAsFixed(2)}%');
  print('Salário líquido: R\$ ${empregado.calcularSalario().toStringAsFixed(2)}');
}
