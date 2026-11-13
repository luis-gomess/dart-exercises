import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  final IconData icone;
  final String nome;
  final int quantidade;

  final bool selecionado;
  final VoidCallback? onTap;

  const CategoriaCard({
    super.key,
    required this.icone,
    required this.nome,
    required this.quantidade,
    this.selecionado = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final corFundo = selecionado ? Colors.green : Colors.green.shade50;
    final corConteudo = selecionado ? Colors.white : Colors.green.shade900;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 82,
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, color: corConteudo),
            const SizedBox(height: 4),
            Text(
              nome,
              style: TextStyle(fontSize: 12, color: corConteudo),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              '$quantidade',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: corConteudo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
