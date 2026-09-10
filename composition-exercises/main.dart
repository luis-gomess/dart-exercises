import 'cliente.dart';
import 'produto.dart';
import 'venda.dart';
import 'venda_item.dart';

void main() {
  final cliente = Cliente(
    nome: 'Ana Souza',
    cpf: 12345678901,
  );

  final notebook = Produto(
    codigo: 1,
    nome: 'Notebook',
    preco: 3500.00,
    desconto: 10,
  );

  final mouse = Produto(
    codigo: 2,
    nome: 'Mouse',
    preco: 120.00,
  );

  final itemNotebook = VendaItem(
    produto: notebook,
    quantidade: 1,
  );

  final itemMouse = VendaItem(
    produto: mouse,
    quantidade: 2,
  );

  itemMouse.preco = 100.00;

  itemMouse.preco = 0;

  final venda = Venda(
    cliente: cliente,
    itens: [itemNotebook, itemMouse],
  );

  print(venda);
}