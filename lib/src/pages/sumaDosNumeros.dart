import 'package:flutter/material.dart';

class SumaDosNumeros extends StatefulWidget {
  SumaDosNumeros({Key? key}) : super(key: key);

  @override
  _SumaDosNumerosState createState() => _SumaDosNumerosState();
}

class _SumaDosNumerosState extends State<SumaDosNumeros> {
  //String _nombre = '';
  int _n1 = 0, _n2 = 0, _suma = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma Dos Números'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          _numeroUno(),
          _numeroDos(),
          _botonResultado(),
          Divider(),
          _resultado(),
        ],
      ),
    );
  }

  /*Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text('${_nombre.length}'),
        hintText: 'Nombre',
        labelText: 'Nombre',
        helperText: 'Cosme',
        suffixIcon: Icon(Icons.account_box),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }*/

  Widget _resultado() {
    return ListTile(
      title: Text('La suma de $_n1 y $_n2 da $_suma'),
    );
  }

  Widget _numeroUno() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Número 1',
        labelText: 'Número 1',
        helperText: 'Ingresa un número',
        suffixIcon: Icon(Icons.looks_one),
      ),
      onChanged: (valor) {
        _n1 = int.parse(valor);
      },
    );
  }

  Widget _numeroDos() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Número 2',
        labelText: 'Número 2',
        helperText: 'Ingresa un número',
        suffixIcon: Icon(Icons.looks_two),
      ),
      onChanged: (valor) {
        _n2 = int.parse(valor);
      },
    );
  }

  Widget _botonResultado() {
    return ElevatedButton(
      child: Text('Sumar'),
      onPressed: () {
        setState(() {
          _suma = _n1 + _n2;
        });
      },
    );
  }
}
