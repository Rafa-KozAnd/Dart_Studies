import 'dart:math';

String generatePassword(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()';
  final random = Random();
  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}

void main() {
  print('Senha gerada: ${generatePassword(12)}'); // 12 é o comprimento configurável.
}
