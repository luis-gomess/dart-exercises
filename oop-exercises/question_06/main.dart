import 'vendedor.dart';

void main() {
  final vendedor = Vendedor(
    nome: 'Fernanda',
    endereco: 'Rua F, 600',
    telefone: '(85) 95555-6666',
    codigoSetor: 40,
    salarioBase: 2800.0,
    imposto: 9.0,
    valorVendas: 20000.0,
    comissao: 4.0,
  );

  print('Vendedor: ${vendedor.nome}');
  print('Salário base: R\$ ${vendedor.salarioBase.toStringAsFixed(2)}');
  print('Valor das vendas: R\$ ${vendedor.valorVendas.toStringAsFixed(2)}');
  print('Comissão: ${vendedor.comissao.toStringAsFixed(2)}%');
  print('Salário final: R\$ ${vendedor.calcularSalario().toStringAsFixed(2)}');
}
