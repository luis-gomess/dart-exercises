import 'pessoa.dart';

void main() {
  final pessoa1 = Pessoa();
  pessoa1.nome = 'Ana';
  pessoa1.endereco = 'Rua A, 100';
  pessoa1.telefone = '(85) 99999-1111';

  final pessoa2 = Pessoa.comNome('Bruno');

  final pessoa3 = Pessoa.completo(
    nome: 'Carla',
    endereco: 'Rua C, 300',
    telefone: '(85) 99999-3333',
  );

  print('Pessoa 1: ${pessoa1.nome}, ${pessoa1.endereco}, ${pessoa1.telefone}');
  print('Pessoa 2: ${pessoa2.nome}');
  print('Pessoa 3: ${pessoa3.nome}, ${pessoa3.endereco}, ${pessoa3.telefone}');
}
