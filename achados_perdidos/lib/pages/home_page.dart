import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/filtro_bar.dart';
import '../widgets/item_card.dart';
import '../widgets/resumo_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TAREFA 2
  List<Item> itens = [
    Item('Garrafa azul', 'Biblioteca', '05/11', Categoria.outro),
    Item('Carregador de celular', 'Laboratório 2', '04/11', Categoria.eletronico),
    Item('Casaco cinza', 'Quadra', '03/11', Categoria.roupa, devolvido: true),
    Item('Carteira de estudante', 'Cantina', '03/11', Categoria.documento),
    Item('Caderno de Cálculo', 'Sala 12', '31/10', Categoria.material, devolvido: true),
  ];

  String filtro = 'Todos';

  // TAREFA 3
  int get total => itens.length;
  int get aguardando => itens.where((item) => !item.devolvido).length;
  int get devolvidos => itens.where((item) => item.devolvido).length;

  // TAREFA 5
  IconData iconeDaCategoria(Categoria categoria) {
    switch (categoria) {
      case Categoria.eletronico:
        return Icons.phone_android;
      case Categoria.material:
        return Icons.menu_book;
      case Categoria.roupa:
        return Icons.checkroom;
      case Categoria.documento:
        return Icons.badge;
      default:
        return Icons.inventory_2;
    }
  }

  // TAREFA 6
  void adicionarItem() {
    setState(() {
      itens.add(Item('Objeto ${itens.length + 1}', 'Pátio', '05/11', Categoria.outro));
    });
  }

  // TAREFA 7
  void alternarItem(Item item) {
    setState(() {
      item.alternarStatus();
    });
  }

  // TAREFA 8 (desafio)
  List<Item> get itensVisiveis {
    if (filtro == 'Aguardando') {
      return itens.where((item) => !item.devolvido).toList();
    } else if (filtro == 'Devolvidos') {
      return itens.where((item) => item.devolvido).toList();
    }
    return itens;
  }

  // TAREFA 9 (desafio)
  void removerItem(Item item) {
    setState(() {
      itens.remove(item);
    });
  }

  // Layout
  @override
  Widget build(BuildContext context) {
    final lista = itensVisiveis;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Achados e Perdidos'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ResumoCard(
            total: total,
            aguardando: aguardando,
            devolvidos: devolvidos,
          ),
          FiltroBar(
            selecionado: filtro,
            onSelecionar: (opcao) {
              setState(() {
                filtro = opcao;
              });
            },
          ),
          Expanded(
            child: lista.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.inventory_2, size: 56, color: Colors.grey),
                        SizedBox(height: 12),
                        Text(
                          'Nenhum item por aqui',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Toque em + para adicionar'),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 80),
                    itemCount: lista.length,
                    itemBuilder: (context, index) {
                      final item = lista[index];
                      // TAREFA 4
                      return ItemCard(
                        nome: item.nome,
                        detalhe: '${item.local} · ${item.data}',
                        icone: iconeDaCategoria(item.categoria),
                        status: item.status,
                        devolvido: item.devolvido,
                        onTap: () => alternarItem(item),
                        onLongPress: () => removerItem(item),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: adicionarItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
