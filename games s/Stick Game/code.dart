import 'dart:io';
import 'dart:math';

void main() {
  int sticks = 21;
  print('Bem-vindo ao Jogo do Palito!');
  print('Regras: Cada jogador pode retirar 1, 2 ou 3 palitos. Quem pegar o último perde.\n');

  while (sticks > 0) {
    print('Palitos restantes: $sticks');
    print('Quantos palitos você quer retirar (1, 2 ou 3)?');
    int playerMove = int.parse(stdin.readLineSync()!);

    if (playerMove < 1 || playerMove > 3 || playerMove > sticks) {
      print('Jogada inválida. Tente novamente.');
      continue;
    }

    sticks -= playerMove;
    if (sticks == 0) {
      print('Você pegou o último palito. Você perdeu!');
      break;
    }

    int aiMove = min(3, sticks);
    print('A IA retirou $aiMove palito(s).');
    sticks -= aiMove;

    if (sticks == 0) {
      print('A IA pegou o último palito. Você venceu!');
      break;
    }
  }
  print('Jogo encerrado.');
}
