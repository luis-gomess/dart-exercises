import 'produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({
    required Produto produto,
    this.quantidade = 1,
  })  : produto = produto,
        _preco = produto.precoComDesconto;

  double get preco => _preco;

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}