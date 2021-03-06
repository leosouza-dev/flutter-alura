import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: Text('TransferĂȘncias'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    ),
  ));
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(1000, 100.0)),
        ItemTransferencia(Transferencia(1001, 200.0)),
        ItemTransferencia(Transferencia(1002, 300.0)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final int numeroConta;
  final double valor;

  Transferencia(this.numeroConta, this.valor);
}
