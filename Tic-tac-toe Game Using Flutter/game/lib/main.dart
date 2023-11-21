import 'package:flutter/material.dart';
import 'package:game/ui/theme/color.dart';
import 'package:game/utils/game_logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  //declaracao de variaveis
  String lastValue = "X";
  String nome = "";
  bool gameOver = false;
  int turn = 0;
  String result = "";

  List<int> scoreboard = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  Game game = Game();

  @override
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();
    print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    /*
     */
    double boardWith = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "It's ${lastValue} turn ${nome}".toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 58),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //Game Board
            width: boardWith,
            height: boardWith,
            child: GridView.count(
              crossAxisCount: Game.boardlength ~/ 3,
              padding: EdgeInsets.all(16.0),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              children: List.generate(Game.boardlength, (index) {
                return InkWell(
                  onTap: gameOver
                      ? null
                      : () {
                          if (game.board![index] == "") {
                            print(scoreboard);
                            setState(() {
                              game.board![index] = lastValue;
                              turn++;
                              gameOver = game.winnerCheck(
                                  lastValue, index, scoreboard, 3);
                              if (gameOver) {
                                result = "$lastValue is the winner";
                              } else if (!gameOver && turn == 9) {
                                result = "It's a Draw";
                                gameOver = true;
                              }

                              if (lastValue == "X")
                                lastValue = "O";
                              else
                                lastValue = "X";
                            });
                            print(scoreboard);
                            print(
                                '-----------------------------------------------');
                          }
                        },
                  child: Container(
                    //box game board
                    width: Game.blocSize,
                    height: Game.blocSize,
                    decoration: BoxDecoration(
                      color: MainColor.secondaryColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Text(
                        game.board![index],
                        style: TextStyle(
                            color: game.board![index] == "X"
                                ? Colors.blue
                                : Colors.pink,
                            fontSize: 70.0),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(color: Colors.white, fontSize: 54.0),
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                game.board = Game.initGameBoard();
                lastValue = "X";
                gameOver = false;
                turn = 0;
                result = "";
                scoreboard = [0, 0, 0, 0, 0, 0, 0, 0];
              });
            },
            icon: Icon(Icons.replay),
            label: Text("Repeat the Game"),
          ),
        ],
      ),
    );
  }
}
