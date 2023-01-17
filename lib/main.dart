import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Сайт в разработке',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'В разработке'),
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              '/img/rec.png',
              height: MediaQuery.of(context).size.height / 2,
            ),
            const Text(
              'Мы сейчас работаем над обновлением сайта',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            SlideCountdownSeparated(
              height: MediaQuery.of(context).size.width / 15,
              width: MediaQuery.of(context).size.width / 15,
              duration: const Duration(days: 25),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width / 30))),
            )
          ],
        ),
      ),
    );
  }
}
