import 'dart:async';

void main() {
  int seconds = 0;
  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    seconds++;
    print('Tempo: $seconds segundo(s)');
    if (seconds == 10) { // Configurável para parar após 10 segundos.
      timer.cancel();
      print('Cronômetro encerrado.');
    }
  });
}
