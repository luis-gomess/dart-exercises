import 'dart:io';

void main() {
  print('Digite um número: ');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('Divisores de $numero:');

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      print(i);
    }
  }
}