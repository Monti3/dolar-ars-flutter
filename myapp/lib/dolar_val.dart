import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';

int usdVal = 0;

Future<void> getUSD() async {
  try {
    // Construye la Uri correctamente
    var url = Uri.https('dolarapi.com', '/v1/dolares/blue');

    // Realiza la solicitud HTTP GET
    final http.Response res = await http.get(url);

    // Verifica si la solicitud fue exitosa (código de estado 200)
    if (res.statusCode == 200) {
      // Decodifica la respuesta JSON
      final Map<String, dynamic> data = jsonDecode(res.body);

      // Extrae el valor de 'venta'
      final int cambioUSD = data['venta'];

      // Asigna el valor a usdVal
      usdVal = cambioUSD;
    } else {
      debugPrint('Error en la solicitud: ${res.statusCode}');
    }
  } catch (e) {
    debugPrint('Ocurrió un error: $e');
  }
}