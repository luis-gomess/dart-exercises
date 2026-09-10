import 'animal.dart';

class Preguica extends Animal {
  Preguica({
    required super.nome,
    required super.idade,
  });

  @override
  void emitirSom() {
    print('$nome: Som de preguiça!');
  }

  void subirEmArvores() {
    print('$nome está subindo em uma árvore.');
  }
}
