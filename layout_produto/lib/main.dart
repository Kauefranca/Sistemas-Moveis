import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(LayoutProdutoApp());
}

class LayoutProdutoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Detalhe Produto",
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 181, 21, 192),
            title: Text(
                'Detalhe Produto',
                style: TextStyle(
                    color: Colors.white,
                ),
            ),
        ),
        body: DetalheProduto(),
        )
    );
  }
}

class DetalheProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: [
                Text('Componente FotoProduto'),
                TituloProduto(nome: "Produto 1", preco: 321.99),
                TituloProduto(nome: "Produto 2", preco: 3.90),
                TituloProduto(nome: "Produto 3", preco: 126.99),
                Text('Componente AcoesProduto')
            ],
        ),
    );
  }
}

class TituloProduto extends StatelessWidget {
    TituloProduto({super.key, required String this.nome, required double this.preco});

    final String nome;
    final double preco;


    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                Expanded(
                  child: Text(
                      nome,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                Text('R\$ ${preco.toStringAsFixed(2)}'),
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
            ],
        );
    }
}