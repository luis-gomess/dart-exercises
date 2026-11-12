enum Categoria { eletronico, material, roupa, documento, outro }

class Item {
  String nome;
  String local;
  String data;
  Categoria categoria;
  bool devolvido;

  Item(this.nome, this.local, this.data, this.categoria, {this.devolvido = false});

  String get status => devolvido ? 'Devolvido' : 'Aguardando';

  void alternarStatus() {
    devolvido = !devolvido;
  }
}
