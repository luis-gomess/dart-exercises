void main() {
  List<int> numeros = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int numero in numeros) {
    if (numero < 5) {
      print(numero);
    }
  }
}