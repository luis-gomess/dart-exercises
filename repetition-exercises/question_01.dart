import 'dart:io';

void main() {
  print('Digite seu nome: ');
  String? nomeDaPessoa = stdin.readLineSync();

  print('Digite sua idade: ');
  int idadeDaPessoa = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int anoDeNascimento = DateTime.now().year - idadeDaPessoa;
  int anosRestantes = 100 - idadeDaPessoa;

  print('Olá, $nomeDaPessoa, você tem $idadeDaPessoa anos.');
  print('No ano de $anoDeNascimento você nasceu!\n');

  int ano = anoDeNascimento;

  for (int i = 1; i <= idadeDaPessoa; i++) {
    ano++;
    print('No ano de $ano você tinha $i anos.');
  }

  print('\nFaltam $anosRestantes anos para você completar 100 anos.');
}