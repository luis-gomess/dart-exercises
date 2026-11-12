import 'package:flutter/material.dart';

// Componente pronto: não é preciso alterar este arquivo.
class ResumoCard extends StatelessWidget {
  final int total;
  final int aguardando;
  final int devolvidos;

  const ResumoCard({
    super.key,
    required this.total,
    required this.aguardando,
    required this.devolvidos,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(14, 14, 14, 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            _contador('Total', total, Colors.black87),
            _contador('Aguardando', aguardando, Colors.orange.shade900),
            _contador('Devolvidos', devolvidos, Colors.green.shade800),
          ],
        ),
      ),
    );
  }

  Widget _contador(String rotulo, int valor, Color cor) {
    return Expanded(
      child: Column(
        children: [
          Text(
            '$valor',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: cor,
            ),
          ),
          Text(rotulo, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
