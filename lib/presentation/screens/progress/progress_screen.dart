import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  static const String name = 'progress_screen';

  const ProgressPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('progress indidactor'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: const [
        SizedBox(
          height: 30,
        ),
        Text('Circular Progress indicator'),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
         SizedBox(
          height: 20,
        ),
        Text('Circular Progress indicator controlado'),
          SizedBox(
          height: 20,
        ),
        _ControlledProgressIndicator()
      ],
    ));
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
