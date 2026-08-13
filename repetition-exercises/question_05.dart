void main() {
  List<int> numeros = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> pares = [];

  for (int numero in numeros) {
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  }

  print('Números pares: $pares');
}