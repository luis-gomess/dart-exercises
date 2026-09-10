import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';

void main() {
  final List<Animal> animais = [
    Cachorro(nome: 'Rex', idade: 4),
    Cavalo(nome: 'Spirit', idade: 7),
    Preguica(nome: 'Lento', idade: 3),
  ];

  for (final animal in animais) {
    animal.emitirSom();
  }
}
