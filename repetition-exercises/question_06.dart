import 'dart:io';
import 'dart:math';

void main() {
  List<String> opcoes = ['pedra', 'papel', 'tesoura'];

  print('Digite pedra, papel ou tesoura:');
  String escolhaUsuario = stdin.readLineSync()?.toLowerCase() ?? '';

  Random random = Random();
  String escolhaComputador = opcoes[random.nextInt(opcoes.length)];

  print('Computador escolheu: $escolhaComputador');

  if (!opcoes.contains(escolhaUsuario)) {
    print('Opção inválida.');
  } else if (escolhaUsuario == escolhaComputador) {
    print('Empate!');
  } else if (
      (escolhaUsuario == 'pedra' && escolhaComputador == 'tesoura') ||
      (escolhaUsuario == 'papel' && escolhaComputador == 'pedra') ||
      (escolhaUsuario == 'tesoura' && escolhaComputador == 'papel')) {
    print('Você venceu!');
  } else {
    print('Computador venceu!');
  }
}