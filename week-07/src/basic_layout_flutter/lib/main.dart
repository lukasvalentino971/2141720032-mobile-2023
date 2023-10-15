import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch:
              Colors.deepPurple, // Ubah warna utama sesuai keinginan Anda
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black, // Atur latar belakang putih di sini
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        titleSection,
        contactSection,
        iconSection,
      ],
    );
  }

  final Widget titleSection = Container(
    padding: const EdgeInsets.all(24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.account_circle,
          size: 100,
          color: Colors.white,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Lukas Valentino",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "2141720022",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  final Widget contactSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "Malang",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      Text(
        "089513704110",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ],
  );

  final Widget iconSection = Container(
    padding: const EdgeInsets.all(30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.add_moderator_rounded,
          color: Colors.red,
          size: 50,
        ),
        Icon(Icons.add_a_photo_rounded, color: Colors.green, size: 50),
        Icon(Icons.apple_rounded, color: Colors.blue, size: 50),
        Icon(Icons.backup_rounded, color: Colors.amber, size: 50),
      ],
    ),
  );
}
