import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _screenshotController = ScreenshotController();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Screenshot(
                controller: _screenshotController,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16.0,
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/pawn.jpeg'),
                        const Text(
                          'Flutter ist lustig.',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    //_takeScreenshot;
                  },
                  child: const Text('Take a screenshot and share'))
            ],
          ),
        ),
      ),
    );
  }
/*
  void _takeScreenshot() async {
    final imageFile = await _screenshotController.capture();
    final imageXFile = XFile.fromData(imageFile!);
    // Share.shareXFiles([imageXFile], text: 'Great picture');
    //Share.shareXFiles([imageFile]);
  }
*/
}
