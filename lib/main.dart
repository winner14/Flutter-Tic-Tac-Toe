import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/board.dart';
import 'package:tic_tac_toe/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: Themes.lightMode,
      darkTheme: Themes.darkMode,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'TIC TAC TOE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Color(0xFF170130),
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.play_circle_outline_rounded,
        //         color: Color(0xFF560BAD),
        //         size: 35,
        //       ),
        //       tooltip: 'New Game',
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.pause_circle_outline_rounded,
        //         color: Color(0xFF560BAD),
        //         size: 35,
        //       ),
        //       tooltip: 'Pause',
        //     ),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.cancel_rounded,
        //       color: Color(0xFF560BAD),
        //       size: 35,
        //     ),
        //     tooltip: 'Quit',
        //   )
        // ],
      ),
      body: const Board(),
    );
  }
}
