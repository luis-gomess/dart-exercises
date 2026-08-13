import 'dart:io';

void main() {
  Map<String, String> complemento = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
  };

  print('Digite uma fita de DNA:');
  String dna = stdin.readLineSync()?.toUpperCase() ?? '';

  String rna = '';

  for (String nucleotideo in dna.split('')) {
    rna += complemento[nucleotideo] ?? '';
  }

  print('RNA: $rna');
}