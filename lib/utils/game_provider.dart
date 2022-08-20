import 'dart:math';

import 'package:wordle_clone/widgets/game_board.dart';

class WorldeGame {
  //setting the game variables
  int rowId = 0;
  int letterId = 0;
  static String game_message = "";
  static String game_guess = "";
  static List<String> word_list = ["world", "fight", "brain", "plane", "earth","robot",""];
  static bool gameOver = false;
  //setting the game row
  static List<Letter> wordleRow = List.generate(
    5,
    (index) => Letter("", 0),
  );

  //Setting the gameBoard
  List<List<Letter>> wordleBoard = List.generate(
      5,
      (index) => List.generate(
            5,
            (index) => Letter("", 0),
          ));

  //Setting the Game Functon
  void passTry() {
    rowId++;
    letterId = 0;
  }

  static void initGame() {
    final random = new Random();
    int index = random.nextInt(word_list.length);
    game_guess = word_list[index].toUpperCase();
  }

  //Setting the game insertion
  void insertWord(index, word) {
    wordleBoard[rowId][index] = word;
  }

  //checking world
  bool checkWordExist(String word) {
    return word_list.contains(word);
  }
}

class Letter {
  String? letter;
  int code = 0;

  Letter(this.letter, this.code);
}
