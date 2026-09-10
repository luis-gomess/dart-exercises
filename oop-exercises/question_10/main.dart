import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';
import 'zoologico.dart';

void main() {
  final List<Animal> jaulas = [
    Cachorro(nome: 'Rex', idade: 4),
    Cavalo(nome: 'Spirit', idade: 7),
    Preguica(nome: 'Lento', idade: 3),
    Cachorro(nome: 'Bolt', idade: 2),
    Cavalo(nome: 'Trovão', idade: 6),
    Preguica(nome: 'Moleza', idade: 5),
    Cachorro(nome: 'Thor', idade: 5),
    Cavalo(nome: 'Pé de Pano', idade: 8),
    Preguica(nome: 'Soneca', idade: 4),
    Cachorro(nome: 'Bob', idade: 3),
  ];

  final zoologico = Zoologico(jaulas);
  zoologico.visitarJaulas();
}
