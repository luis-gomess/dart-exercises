import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';
import 'veterinario.dart';

void main() {
  final veterinario = Veterinario();

  final cachorro = Cachorro(nome: 'Rex', idade: 4);
  final cavalo = Cavalo(nome: 'Spirit', idade: 7);
  final preguica = Preguica(nome: 'Lento', idade: 3);

  veterinario.examinar(cachorro);
  veterinario.examinar(cavalo);
  veterinario.examinar(preguica);
}
