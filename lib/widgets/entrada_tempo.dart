import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  const EntradaTempo({
    Key? key,
    required this.valor,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_downward,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red),
          ),
          Text(
            '${valor} min',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_upward_outlined,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red),
          ),
        ]),
      ],
    );
  }
}