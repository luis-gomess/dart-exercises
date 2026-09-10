import 'animal.dart';

class Cavalo extends Animal {
  Cavalo({
    required super.nome,
    required super.idade,
  });

  @override
  void emitirSom() {
    print('$nome: Relincho!');
  }

  void correr() {
    print('$nome está correndo.');
  }
}
