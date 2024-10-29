import 'package:flutter/material.dart';
import 'package:pool_clean_app/pages/inicio.dart';
import 'package:pool_clean_app/utils/global.colors.dart';

class CalcularLitrajePage extends StatefulWidget {
  const CalcularLitrajePage({super.key});

  @override
  State<CalcularLitrajePage> createState() => _CalcularLitrajePageState();
}

class _CalcularLitrajePageState extends State<CalcularLitrajePage> {
  final TextEditingController _anchoController = TextEditingController();
  final TextEditingController _largoController = TextEditingController();
  final TextEditingController _profundidadController = TextEditingController();
  final TextEditingController _diametroController = TextEditingController();

  double? _litraje;
  String _tipoPiscina = 'Rectangular';

  void _calcularLitraje() {
    final double ancho = double.tryParse(_anchoController.text) ?? -1;
    final double largo = double.tryParse(_largoController.text) ?? -1;
    final double profundidad =
        double.tryParse(_profundidadController.text) ?? -1;
    final double diametro = double.tryParse(_diametroController.text) ?? -1;

    if (_tipoPiscina == 'Rectangular' || _tipoPiscina == 'Ovalada') {
      if (ancho <= 0 || largo <= 0 || profundidad <= 0) {
        _showErrorDialog(
            'Por favor, ingrese valores válidos para largo, ancho y profundidad.');
        return;
      }
    } else if (_tipoPiscina == 'Redonda') {
      if (diametro <= 0 || profundidad <= 0) {
        _showErrorDialog(
            'Por favor, ingrese valores válidos para diámetro y profundidad.');
        return;
      }
    }

    setState(() {
      switch (_tipoPiscina) {
        case 'Rectangular':
          _litraje = largo * ancho * profundidad * 1000;
          break;
        case 'Ovalada':
          _litraje = largo * ancho * profundidad * 0.89 * 1000;
          break;
        case 'Redonda':
          _litraje = diametro * diametro * profundidad * 0.785 * 1000;
          break;
      }
    });
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _limpiarFormulario() {
    _anchoController.clear();
    _largoController.clear();
    _profundidadController.clear();
    _diametroController.clear();
    setState(() {
      _litraje = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calcular Litraje de la Piscina',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: GlobalColors.mainColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Seleccione la forma de su piscina",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            DropdownButton<String>(
              value: _tipoPiscina,
              items: <String>['Rectangular', 'Ovalada', 'Redonda']
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _tipoPiscina = newValue!;
                  _limpiarFormulario(); 
                });
              },
            ),
            const SizedBox(height: 20),
            if (_tipoPiscina != 'Redonda')
              TextField(
                controller: _largoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Largo (m)',
                  border: OutlineInputBorder(),
                ),
              ),
            const SizedBox(height: 20),
            if (_tipoPiscina != 'Redonda')
              TextField(
                controller: _anchoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ancho (m)',
                  border: OutlineInputBorder(),
                ),
              ),
            if (_tipoPiscina == 'Redonda')
              TextField(
                controller: _diametroController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Diámetro (m)',
                  border: OutlineInputBorder(),
                ),
              ),
            const SizedBox(height: 20),
            TextField(
              controller: _profundidadController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Profundidad media (m)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: _calcularLitraje,
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Calcular Litraje',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_litraje != null)
              Column(
                children: [
                  Text(
                    'Litraje estimado: ${_litraje!.toStringAsFixed(2)} litros',
                    style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InicioPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalColors.mainColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Continuar',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
