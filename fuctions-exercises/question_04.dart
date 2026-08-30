List<num> maximo_minimo(List<num> numeros) {
  num maximo = numeros[0];
  num minimo = numeros[0];

  for (num numero in numeros) {
    if (numero > maximo) {
      maximo = numero;
    }

    if (numero < minimo) {
      minimo = numero;
    }
  }

  return [maximo, minimo];
}

void main() {
  List<num> numeros = [4, 7, 2, 8, 10, 3];

  print(maximo_minimo(numeros));
}