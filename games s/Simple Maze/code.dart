import 'dart:io';
import 'dart:math';

void main() {
  final maze = {
    'start': {'description': 'Você está no começo do labirinto.', 'north': 'room1'},
    'room1': {'description': 'Você chegou em uma sala com duas saídas.', 'south': 'start', 'east': 'room2'},
    'room2': {'description': 'Você está em uma sala escura.', 'west': 'room1', 'north': 'exit'},
    'exit': {'description': 'Parabéns, você encontrou a saída!', 'end': true},
  };

  String currentRoom = 'start';
  print('Bem-vindo ao Labirinto! Encontre a saída.');

  while (true) {
    final room = maze[currentRoom]!;
    print('\n${room['description']}');
    if (room.containsKey('end')) break;

    print('Escolha uma direção (north, south, east, west):');
    final input = stdin.readLineSync()?.toLowerCase();

    if (room.containsKey(input)) {
      currentRoom = room[input]!;
    } else {
      print('Direção inválida. Tente novamente.');
    }
  }
  print('Jogo encerrado.');
}
