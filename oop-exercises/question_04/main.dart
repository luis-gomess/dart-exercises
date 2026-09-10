import 'administrador.dart';

void main() {
  final administrador = Administrador(
    nome: 'Daniela',
    endereco: 'Rua D, 400',
    telefone: '(85) 97777-4444',
    codigoSetor: 20,
    salarioBase: 5000.0,
    imposto: 12.0,
    ajudaDeCusto: 800.0,
  );

  print('Administrador: ${administrador.nome}');
  print('Salário base: R\$ ${administrador.salarioBase.toStringAsFixed(2)}');
  print('Imposto: ${administrador.imposto.toStringAsFixed(2)}%');
  print('Ajuda de custo: R\$ ${administrador.ajudaDeCusto.toStringAsFixed(2)}');
  print('Salário final: R\$ ${administrador.calcularSalario().toStringAsFixed(2)}');
}
