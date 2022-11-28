import 'dart:ffi';

import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  //name the boxes with different variables.
  String box1 = "";
  String box2 = "";
  String box3 = "";
  String box4 = "";
  String box5 = "";
  String box6 = "";
  String box7 = "";
  String box8 = "";
  String box9 = "";

  //Getting players' turns
  int turnCount = 0;

  String player = "";

  void changeBox1() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box1.isEmpty) {
          box1 = "X";
        }
      } else {
        if (box1.isEmpty) {
          box1 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox2() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box2.isEmpty) {
          box2 = "X";
        }
      } else {
        if (box2.isEmpty) {
          box2 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox3() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box3.isEmpty) {
          box3 = "X";
        }
      } else {
        if (box3.isEmpty) {
          box3 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox4() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box4.isEmpty) {
          box4 = "X";
        }
      } else {
        if (box4.isEmpty) {
          box4 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox5() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box5.isEmpty) {
          box5 = "X";
        }
      } else {
        if (box5.isEmpty) {
          box5 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox6() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box6.isEmpty) {
          box6 = "X";
        }
      } else {
        if (box6.isEmpty) {
          box6 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox7() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box7.isEmpty) {
          box7 = "X";
        }
      } else {
        if (box7.isEmpty) {
          box7 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox8() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box8.isEmpty) {
          box8 = "X";
        }
      } else {
        if (box8.isEmpty) {
          box8 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void changeBox9() {
    turnCount++;
    setState(() {
      if (turnCount % 2 == 0) {
        if (box9.isEmpty) {
          box9 = "X";
        }
      } else {
        if (box9.isEmpty) {
          box9 = "O";
        }
      }
      checkWinner();
      checkDraw();
    });
  }

  void newGame() {
    setState(() {
      box1 = "";
      box2 = "";
      box3 = "";
      box4 = "";
      box5 = "";
      box6 = "";
      box7 = "";
      box8 = "";
      box9 = "";
      turnCount = 0;
    });
  }

  //checking for the winner
  void checkWinner() {
    if (((box1.isNotEmpty &&
            box2.isNotEmpty &&
            box3.isNotEmpty &&
            box4.isNotEmpty &&
            box5.isNotEmpty &&
            box6.isNotEmpty &&
            box7.isNotEmpty &&
            box8.isNotEmpty) ||
        (box1 == box2 &&
            box2 == box3 &&
            box1.isNotEmpty &&
            box2.isNotEmpty &&
            box3.isNotEmpty) ||
        (box1 == box4 &&
            box4 == box7 &&
            box1.isNotEmpty &&
            box4.isNotEmpty &&
            box7.isNotEmpty) ||
        (box1 == box5 &&
            box5 == box9 &&
            box1.isNotEmpty &&
            box5.isNotEmpty &&
            box9.isNotEmpty) ||
        (box2 == box5 &&
            box5 == box8 &&
            box2.isNotEmpty &&
            box5.isNotEmpty &&
            box8.isNotEmpty) ||
        (box3 == box6 &&
            box6 == box9 &&
            box3.isNotEmpty &&
            box6.isNotEmpty &&
            box9.isNotEmpty) ||
        (box3 == box5 &&
            box5 == box7 &&
            box3.isNotEmpty &&
            box5.isNotEmpty &&
            box7.isNotEmpty) ||
        (box4 == box5 &&
            box5 == box6 &&
            box4.isNotEmpty &&
            box5.isNotEmpty &&
            box6.isNotEmpty) ||
        (box7 == box8 &&
            box8 == box9 &&
            box7.isNotEmpty &&
            box8.isNotEmpty &&
            box8.isNotEmpty))) {
      if (turnCount % 2 == 1) {
        player = "player 1";
      } else {
        player = "Player 2";
      }
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('We have a Winner'),
            content: Text('Player $player won'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  newGame();
                },
                child: const Text('Replay'),
              ),
            ],
          );
        },
      );
    }
  }

  void checkDraw() {
    if (turnCount == 9) {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Draw"),
            content: const Text("It's a draw"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  newGame();
                },
                child: const Text("Replay"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,

      //creating the board for game
      child: Center(
        child: Container(
          height: 350,
          width: 350,
          color: const Color(0xFF560BAD),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: changeBox1,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box1,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox2,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box2,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox3,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box3,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: changeBox4,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box4,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox5,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box5,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox6,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box6,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: changeBox7,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box7,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox8,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box8,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: changeBox9,
                    child: Container(
                      width: 110,
                      height: 110,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          box9,
                          style: const TextStyle(
                              fontSize: 80, color: Color(0xFF560BAD)),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  // Function playerMove1(){

  // }
}
