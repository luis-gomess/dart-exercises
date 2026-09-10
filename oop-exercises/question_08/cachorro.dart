import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({
    required super.nome,
    required super.idade,
  });

  @override
  void emitirSom() {
    print('$nome: Au au!');
  }

  void correr() {
    print('$nome está correndo.');
  }
}
