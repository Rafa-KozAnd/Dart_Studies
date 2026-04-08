import 'dart:io';

void main() {
  print('Digite seu nome:');
  String name = stdin.readLineSync()!;

  print('Digite sua profissão:');
  String profession = stdin.readLineSync()!;

  print('Digite suas habilidades (separe por vírgula):');
  String skills = stdin.readLineSync()!;

  File('curriculo.txt').writeAsStringSync('''
Currículo:
Nome: $name
Profissão: $profession
Habilidades: $skills
  ''');

  print('Currículo salvo como "curriculo.txt".');
}
