import 'package:flutter/material.dart';

// Componente pronto: não é preciso alterar este arquivo.
class ItemCard extends StatelessWidget {
  final String nome;
  final String detalhe;
  final IconData icone;
  final String status;
  final bool devolvido;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const ItemCard({
    super.key,
    required this.nome,
    required this.detalhe,
    required this.icone,
    required this.status,
    required this.devolvido,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final corFundo = devolvido ? Colors.green.shade100 : Colors.orange.shade100;
    final corTexto = devolvido ? Colors.green.shade900 : Colors.orange.shade900;

    return Card(
      margin: const EdgeInsets.only(bottom: 9),
      child: ListTile(
        onTap: onTap,
        onLongPress: onLongPress,
        leading: CircleAvatar(
          backgroundColor: Colors.green.shade100,
          child: Icon(icone, color: Colors.green.shade900),
        ),
        title: Text(nome, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(detalhe),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
          decoration: BoxDecoration(
            color: corFundo,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            status,
            style: TextStyle(
              color: corTexto,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
