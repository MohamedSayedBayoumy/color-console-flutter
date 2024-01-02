import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  console("message", color: AnsiColor.green);
                },
                child: const Text("Print in Console")),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: avoid_print

enum AnsiColor {
  red,
  blue,
  green,
  yellow,
  orange,
  purple,
  cyan,
  pink,
  teal,
  brown,
  indigo,
  grey,
  lime,
  amber,
  deepOrange,
  lightBlue,
  deepPurple,
  lightGreenAccent,
  amberAccent,
  cyanAccent,
  orangeAccent,
  redAccent,
  blueAccent,
  pinkAccent,
  limeAccent,
  darkBlueGrey,
  blueGrey,
}

void console(
  String message, {
  AnsiColor color = AnsiColor.red,
  int bgColor = 0,
}) {
  String textAnsiCode = "";
  if (color == AnsiColor.red) {
    textAnsiCode = '\x1b[38;5;9m'; // ANSI color code for red
  } else if (color == AnsiColor.blue) {
    textAnsiCode = '\x1b[38;5;12m';
  } else if (color == AnsiColor.green) {
    textAnsiCode = '\x1b[38;5;10m';
  } else if (color == AnsiColor.yellow) {
    textAnsiCode = '\x1b[38;5;11m';
  } else if (color == AnsiColor.orange) {
    textAnsiCode = '\x1b[38;5;202m';
  } else if (color == AnsiColor.purple) {
    textAnsiCode = '\x1b[38;5;55m';
  } else if (color == AnsiColor.cyan) {
    textAnsiCode = '\x1b[38;5;14m';
  } else if (color == AnsiColor.pink) {
    textAnsiCode = '\x1b[38;5;205m';
  } else if (color == AnsiColor.teal) {
    textAnsiCode = '\x1b[38;5;6m';
  } else if (color == AnsiColor.brown) {
    textAnsiCode = '\x1b[38;5;94m';
  } else if (color == AnsiColor.indigo) {
    textAnsiCode = '\x1b[38;5;21m';
  } else if (color == AnsiColor.grey) {
    textAnsiCode = '\x1b[38;5;244m';
  } else if (color == AnsiColor.lime) {
    textAnsiCode = '\x1b[38;5;190m';
  } else if (color == AnsiColor.amber) {
    textAnsiCode = '\x1b[38;5;214m';
  } else if (color == AnsiColor.deepOrange) {
    textAnsiCode = '\x1b[38;5;202m';
  } else if (color == AnsiColor.lightBlue) {
    textAnsiCode = '\x1b[38;5;117m';
  } else if (color == AnsiColor.deepPurple) {
    textAnsiCode = '\x1b[38;5;92m';
  } else if (color == AnsiColor.lightGreenAccent) {
    textAnsiCode = '\x1b[38;5;120m';
  } else if (color == AnsiColor.amberAccent) {
    textAnsiCode = '\x1b[38;5;214m';
  } else if (color == AnsiColor.cyanAccent) {
    textAnsiCode = '\x1b[38;5;51m';
  } else if (color == AnsiColor.orangeAccent) {
    textAnsiCode = '\x1b[38;5;208m';
  } else if (color == AnsiColor.redAccent) {
    textAnsiCode = '\x1b[38;5;196m';
  } else if (color == AnsiColor.blueAccent) {
    textAnsiCode = '\x1b[38;5;39m';
  } else if (color == AnsiColor.pinkAccent) {
    textAnsiCode = '\x1b[38;5;205m';
  } else if (color == AnsiColor.limeAccent) {
    textAnsiCode = '\x1b[38;5;190m';
  } else {
    '';
  }

  String backgound = "\x1B[48;5;${bgColor}m";
  String resetCode = "\x1B[0m";

  if (bgColor != 0) {
    print("$textAnsiCode$backgound $message $resetCode");
  } else {
    print("$textAnsiCode$message$resetCode");
  }
}
