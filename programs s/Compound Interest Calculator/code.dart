import 'dart:io';

void main() {
  print('Digite o capital inicial:');
  double principal = double.parse(stdin.readLineSync()!);

  print('Digite a taxa de juros (em %):');
  double rate = double.parse(stdin.readLineSync()!) / 100;

  print('Digite o tempo (em anos):');
  int time = int.parse(stdin.readLineSync()!);

  double amount = principal * (1 + rate).pow(time);
  print('O valor futuro será: R\$${amount.toStringAsFixed(2)}');
}
