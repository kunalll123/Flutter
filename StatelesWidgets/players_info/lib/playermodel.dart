
class Player {
  final String playerName;
  final int jerNo;

  Player({
    required this.playerName,
    required this.jerNo,
  });

  Map<String, dynamic> playerMap() {
    return {
      'playerName': playerName,
      'jerNo': jerNo,
    };
  }
}
