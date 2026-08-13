import 'dart:io';

void main() {
  print('Digite o valor de N:');
  int n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int soma = 0;
  int somaDosQuadrados = 0;

  for (int i = 1; i <= n; i++) {
    soma += i;
    somaDosQuadrados += i * i;
  }

  int quadradoDaSoma = soma * soma;
  int diferenca = quadradoDaSoma - somaDosQuadrados;

  print('Quadrado da soma: $quadradoDaSoma');
  print('Soma dos quadrados: $somaDosQuadrados');
  print('Diferença: $diferenca');
}