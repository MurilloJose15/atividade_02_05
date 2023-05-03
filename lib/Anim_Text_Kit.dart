import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextoAni extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('Programação Mobile II'),
                          WavyAnimatedText('Teste com Animated Text Kit'),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Show!");
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}
