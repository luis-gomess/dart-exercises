import 'fornecedor.dart';

void main() {
  final fornecedor = Fornecedor(
    nome: 'Fornecedor Alfa',
    endereco: 'Av. Central, 500',
    telefone: '(85) 3333-4444',
    valorCredito: 10000.0,
    valorDivida: 2500.0,
  );

  print('Nome: ${fornecedor.nome}');
  print('Endereço: ${fornecedor.endereco}');
  print('Telefone: ${fornecedor.telefone}');
  print('Crédito: R\$ ${fornecedor.valorCredito.toStringAsFixed(2)}');
  print('Dívida: R\$ ${fornecedor.valorDivida.toStringAsFixed(2)}');
  print('Saldo: R\$ ${fornecedor.obterSaldo().toStringAsFixed(2)}');

  fornecedor.telefone = '(85) 3333-5555';
  fornecedor.valorDivida = 3000.0;

  print('\nApós alterações:');
  print('Telefone: ${fornecedor.telefone}');
  print('Saldo: R\$ ${fornecedor.obterSaldo().toStringAsFixed(2)}');
}
