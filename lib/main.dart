import 'package:flutter/material.dart';
import 'LogicLayer/game_manager.dart';
import 'PresentationLayer/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(child: Text("hello world")),
    );
  }
}

class StatefullDebugger extends StatefulWidget {
  const StatefullDebugger({super.key});

  @override
  State<StatefullDebugger> createState() => _Debugger();
}

class _Debugger extends State<StatefullDebugger> {
  @override
  Widget build(BuildContext context) {
    Scaffold debugScaffold = Scaffold(
      body: Center(
        child: Text(
          "list of cards:\n ${GameManager.cards()}",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                GameManager.resetCards();
              });
            },
            child: Icon(Icons.restore),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                GameManager.start();
              });
            },
            child: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
    return Row(
      children: [
        Expanded(flex: 7, child: MainBody()),
        Expanded(flex: 3, child: debugScaffold),
      ],
    );
  }
}
