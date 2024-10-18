import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  String username;
  NextPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $username', style: const TextStyle(fontSize: 24)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back to the Previous Page')),
          ],
        ),
      ),
    );
  }
}
