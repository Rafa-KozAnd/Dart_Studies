import 'dart:math';

void main() {
  final firstNames = ['João', 'Maria', 'Ana', 'Pedro', 'Lucas', 'Carla'];
  final lastNames = ['Silva', 'Santos', 'Oliveira', 'Lima', 'Souza', 'Costa'];

  final random = Random();
  final firstName = firstNames[random.nextInt(firstNames.length)];
  final lastName = lastNames[random.nextInt(lastNames.length)];

  print('Nome gerado: $firstName $lastName');
}
