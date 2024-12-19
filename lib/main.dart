import 'package:basketball_app/widgets/rowOfTwoPlayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  Color backgroundColor = const Color.fromARGB(255, 255, 237, 236);

  int player1Score = 0;
  int player2Score = 0;

  void _resetGame() {
    setState(() {
      player1Score = 0;
      player2Score = 0;
    });
  }

  void _toggleDarkMode() {
    setState(() {
      backgroundColor = backgroundColor == Colors.black
          ? const Color.fromARGB(255, 255, 237, 236)
          : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Points Counter',
              style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: RowOfTwoPlayers(
                player1Score: player1Score,
                player2Score: player2Score,
                onPlayer1ScoreChange: (newScore) {
                  setState(() {
                    player1Score = newScore;
                  });
                },
                onPlayer2ScoreChange: (newScore) {
                  setState(() {
                    player2Score = newScore;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: _resetGame,
              child: const Text(
                'New Game',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
            ElevatedButton(
              onPressed: _toggleDarkMode,
              child: const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
