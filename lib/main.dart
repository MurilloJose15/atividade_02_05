import 'package:atividade_02_05/photo_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'Anim_Text_Kit.dart';
import 'email_validatior.dart';
import 'flutter_easy.dart';
import 'video_player.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';



void main() {
  runApp(MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (_) => HomeScreen(),
          '/videoP': (_) => Video_Player(),
          '/PhotoV': (_) => Photo_View(),
          '/AnimatedTextKIt': (_) => TextoAni(),
          '/FlutterEasyLoa': (_) => Flutter_Easy(),
          '/Email_Val': (_) => ValEmail(),

        })
  );
  }

