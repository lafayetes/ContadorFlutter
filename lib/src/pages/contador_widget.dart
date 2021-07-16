import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorWidget> {
  final _textStyle = TextStyle(fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(
            elevation: 0.0,
            title: Text('Titulo'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cantidad de clicks',
                  style: _textStyle,
                ),
                Text(
                  '$_contador',
                  style: _textStyle,
                ),
              ],
            ),
          ),
          floatingActionButton: _crearBotones()),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 10),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reiniciar),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 10),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        SizedBox(width: 10),
      ],
    );
  }

  void _agregar() => setState(() => _contador++);

  void _restar() => setState(() => _contador--);

  void _reiniciar() => setState(() => _contador = 0);
}
