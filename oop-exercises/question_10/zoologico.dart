import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';

class Zoologico {
  final List<Animal> jaulas;

  Zoologico(this.jaulas) {
    if (jaulas.length != 10) {
      throw ArgumentError('O zoológico deve possuir exatamente 10 jaulas.');
    }
  }

  void visitarJaulas() {
    for (var i = 0; i < jaulas.length; i++) {
      final animal = jaulas[i];

      print('\nJaula ${i + 1}: ${animal.nome}');
      animal.emitirSom();

      if (animal is Cachorro) {
        animal.correr();
      } else if (animal is Cavalo) {
        animal.correr();
      } else if (animal is Preguica) {
        animal.subirEmArvores();
      }
    }
  }
}
