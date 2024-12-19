// PlayerModel.dart
class PlayerModel {
  final String playerImage;
  final int playerScore;

  const PlayerModel({
    required this.playerImage,
    required this.playerScore,
  });

  PlayerModel copyWith({String? playerImage, int? playerScore}) {
    return PlayerModel(
      playerImage: playerImage ?? this.playerImage,
      playerScore: playerScore ?? this.playerScore,
    );
  }
}
