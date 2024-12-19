import 'package:flutter/material.dart';
import '../models/player_model.dart';
import 'player_widget.dart';

class RowOfTwoPlayers extends StatelessWidget {
  final int player1Score;
  final int player2Score;
  final ValueChanged<int> onPlayer1ScoreChange;
  final ValueChanged<int> onPlayer2ScoreChange;

  const RowOfTwoPlayers({
    Key? key,
    required this.player1Score,
    required this.player2Score,
    required this.onPlayer1ScoreChange,
    required this.onPlayer2ScoreChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PlayerWidget(
          player: PlayerModel(
              playerImage: 'assets/images/dudu.png', playerScore: player1Score),
          onScoreChange: onPlayer1ScoreChange,
        ),
        const VerticalDivider(thickness: 1),
        PlayerWidget(
          player: PlayerModel(
              playerImage: 'assets/images/bubu.png', playerScore: player2Score),
          onScoreChange: onPlayer2ScoreChange,
        ),
      ],
    );
  }
}
