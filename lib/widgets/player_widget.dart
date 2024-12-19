import 'package:flutter/material.dart';
import '../models/player_model.dart';

class PlayerWidget extends StatelessWidget {
  final PlayerModel player;
  final ValueChanged<int> onScoreChange;

  const PlayerWidget({
    Key? key,
    required this.player,
    required this.onScoreChange,
  }) : super(key: key);

  void _updateScore(int points) {
    if (player.playerScore + points <= 100) {
      onScoreChange(player.playerScore + points);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          player.playerImage,
          height: 160,
          width: 160,
        ),
        Text(
          "${player.playerScore}",
          style: const TextStyle(fontSize: 120),
        ),
        ElevatedButton(
          onPressed: () => _updateScore(1),
          child: const Text('1 Point',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
        ElevatedButton(
          onPressed: () => _updateScore(2),
          child: const Text('2 Points',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
        ElevatedButton(
          onPressed: () => _updateScore(3),
          child: const Text('3 Points',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
      ],
    );
  }
}
