import 'animal.dart';

class Veterinario {
  void examinar(Animal animal) {
    print('Examinando ${animal.nome}...');
    animal.emitirSom();
  }
}
