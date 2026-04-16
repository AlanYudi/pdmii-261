import 'dart:io';
import 'dart:convert';

void main() async {
  print('🌡️ Servidor iniciado');

  final server =
      await ServerSocket.bind(InternetAddress.anyIPv4, 8080);

  print('✅ Escutando na porta 8080');

  final clients = <Socket>[];

  server.listen((Socket client) {
    print(
        '👤 Cliente conectado: ${client.remoteAddress.address}:${client.remotePort}');

    clients.add(client);

    client
        .cast<List<int>>() // garante tipo correto
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(
      (String data) {
        print('\n📊 NOVA LEITURA');

        try {
          final tempData = jsonDecode(data);

          print('🔢 Temperatura: ${tempData["temperature"]} °C');
          print('🏷️ Dispositivo: ${tempData["device_id"]}');
          print('📍 Local: ${tempData["location"]}');
          print('⏰ Timestamp: ${tempData["timestamp"]}');
          print('══════════════════════');

        } catch (e) {
          print('❌ JSON inválido');
          print(data);
        }
      },
      onDone: () {
        print('👋 Cliente desconectado');
        clients.remove(client);
        client.destroy();
      },
      onError: (error) {
        print('Erro: $error');
      },
    );
  });
}