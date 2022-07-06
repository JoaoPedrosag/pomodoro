import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pomodoro/widgets/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
              SizedBox(
                width: 20,
              ),
              // CronometroBotao(texto: 'Parar', icone: Icons.stop),
              // SizedBox(
              //   width: 20,
              // ),
              CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
            ],
          )
        ],
      ),
    );
  }
}