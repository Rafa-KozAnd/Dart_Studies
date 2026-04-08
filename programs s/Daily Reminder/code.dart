import 'dart:async';

void main() {
  print('Digite o lembrete:');
  String reminder = stdin.readLineSync()!;

  print('Digite o intervalo em segundos:');
  int interval = int.parse(stdin.readLineSync()!);

  Timer.periodic(Duration(seconds: interval), (Timer timer) {
    print('Lembrete: $reminder');
  });
}
