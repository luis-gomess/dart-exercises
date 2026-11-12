import 'package:flutter/material.dart';

// Componente pronto: não é preciso alterar este arquivo.
class FiltroBar extends StatelessWidget {
  final String selecionado;
  final void Function(String) onSelecionar;

  const FiltroBar({
    super.key,
    required this.selecionado,
    required this.onSelecionar,
  });

  static const opcoes = ['Todos', 'Aguardando', 'Devolvidos'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 10),
      child: Wrap(
        spacing: 8,
        children: [
          for (final opcao in opcoes)
            ChoiceChip(
              label: Text(opcao),
              selected: opcao == selecionado,
              onSelected: (_) => onSelecionar(opcao),
            ),
        ],
      ),
    );
  }
}
