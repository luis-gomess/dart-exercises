import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';

void main() {
  final cachorro = Cachorro(nome: 'Rex', idade: 4);
  final cavalo = Cavalo(nome: 'Spirit', idade: 7);
  final preguica = Preguica(nome: 'Lento', idade: 3);

  print('${cachorro.nome}, ${cachorro.idade} anos');
  cachorro.emitirSom();
  cachorro.correr();

  print('\n${cavalo.nome}, ${cavalo.idade} anos');
  cavalo.emitirSom();
  cavalo.correr();

  print('\n${preguica.nome}, ${preguica.idade} anos');
  preguica.emitirSom();
  preguica.subirEmArvores();
}
