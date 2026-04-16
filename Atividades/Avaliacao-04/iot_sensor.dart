import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'dart:convert';

void main() async {
  print('🚀 Sensor IoT iniciado');

  const serverHost = '127.0.0.1';
  const serverPort = 8080;

  Socket? socket;
  bool connected = false;

  Future<void> connect() async {
    try {
      socket = await Socket.connect(serverHost, serverPort);
      connected = true;
      print('✅ Conectado ao servidor');
    } catch (e) {
      print('❌ Falha ao conectar');
      connected = false;
    }
  }

  await connect();

  Timer.periodic(const Duration(seconds: 5), (timer) async {
    if (!connected) {
      print('🔄 Tentando reconectar...');
      await connect();
      return;
    }

    final temperature = 10 + Random().nextDouble() * 25;

    // ✅ JSON CORRETO
    final message = jsonEncode({
      "device_id": "sensor_temp_001",
      "timestamp": DateTime.now().toIso8601String(),
      "temperature": double.parse(
          temperature.toStringAsFixed(2)),
      "location": "Sala de Controle"
    });

    try {
      socket!.write('$message\n');
      print('📤 Temperatura enviada: ${temperature.toStringAsFixed(2)} °C');
    } catch (e) {
      print('❌ Erro ao enviar');
      connected = false;
    }
  });
}