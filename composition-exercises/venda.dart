import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({
    required this.cliente,
    List<VendaItem>? itens,
  }) : itens = itens ?? [];

  double get valorTotal {
    return itens.fold(
      0.0,
      (total, item) => total + (item.preco * item.quantidade),
    );
  }

  @override
  String toString() {
    final buffer = StringBuffer();

    buffer.writeln('Cliente: ${cliente.nome}');
    buffer.writeln('CPF: ${cliente.cpf}');
    buffer.writeln('Itens da venda:');

    for (final item in itens) {
      buffer.writeln(
        '- ${item.produto.nome} | '
        'Qtd: ${item.quantidade} | '
        'Preço unitário: R\$ ${item.preco.toStringAsFixed(2)} | '
        'Subtotal: R\$ ${(item.preco * item.quantidade).toStringAsFixed(2)}',
      );
    }

    buffer.write('Valor total: R\$ ${valorTotal.toStringAsFixed(2)}');

    return buffer.toString();
  }
}