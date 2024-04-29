import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/flame_bird_game.dart';
import 'package:flutter/material.dart';

class GameOverScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'gameOverScreen';
  const GameOverScreen({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black38,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.gameOver),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: onRestard,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Text(
                "Play Again",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onRestard() {
    game.bird.reset();
    game.overlays.remove("gameOverScreen");
    game.resumeEngine();
  }
}
