import 'package:flame/game.dart';
import 'package:flappy_bird/game/flame_bird_game.dart';
import 'package:flappy_bird/screens/game_over_screen.dart';
import 'package:flappy_bird/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (BuildContext context, _) {
          return MainMenuScreen(game: game);
        },
        'gameOverScreen': (BuildContext context, _) {
          return GameOverScreen(game: game);
        }
      },
    ),
  );
}
