import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro_store.dart';

import 'package:pomodoro/widgets/pomodoro.dart';
import 'package:provider/provider.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => Pomodoro(),
          }),
    );
  }
}
