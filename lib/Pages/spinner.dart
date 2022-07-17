import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatefulWidget {
  const Spinner({Key? key}) : super(key: key);

  @override
  State<Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: const Text(
          'My App',
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {

              },
              icon: const Icon(
                  Icons.circle,
              color: Colors.green,
                size: 20,
              )
          )
        ],
      ),
      body: const Center(
          child: SpinKitCircle(
            color: Colors.blue,
          ),
      ),
    );
  }
}
