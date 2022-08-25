import 'package:flutter/material.dart';
import 'package:pulse_button/pulse_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var temperature = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PulseButton(temperature * 100),
            const SizedBox(
              height: 60,
            ),
            Slider(
              value: temperature,
              onChanged: (value) {
                setState(() {
                  temperature = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
