import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _JumlahHitungan = 0;

  void _tambahAngka() {
    setState(() {
      _JumlahHitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "INI STATEFUL WIDGET",
      home: Scaffold(
        body: Column(
          children: [
            Text('$_JumlahHitungan'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  _tambahAngka();
                },
                child: Text("TEKAN TOMBOL INI"))
          ],
        ),
      ),
    );
  }
}
