int calcularEnergia(int nivel, List<int> valoresBase) {
  Set<int> multiplos = {};

  for (int valor in valoresBase) {
    if (valor <= 0) {
      continue;
    }

    for (
      int multiplo = valor;
      multiplo < nivel;
      multiplo += valor
    ) {
      multiplos.add(multiplo);
    }
  }

  int total = 0;

  for (int numero in multiplos) {
    total += numero;
  }

  return total;
}

void main() {
  print(calcularEnergia(20, [3, 5])); 
}