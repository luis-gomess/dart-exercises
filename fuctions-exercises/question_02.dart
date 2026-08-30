double soma(List<num> numero) {
  double total = 0;

  for (num numero in numero) {
    total += numero;
  }

  return total;
}

double media(List<num> numero) {
  double total = soma(numero);

  return total / numero.length;
}

void main() {
  List<num> numeros = [10, 8, 7, 5];

  print(media(numeros));
}