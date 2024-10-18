import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            width: 200.0, // double.infinity
            height: 200.0,
            // /color: Colors.black,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(60)),
              border: Border.all(
                  color: Colors.red,
                  width: 10.0,
                  strokeAlign: BorderSide.strokeAlignOutside),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(10, 10),
                    blurRadius: 40,
                    spreadRadius: 5)
              ],
            ),
            child: const Center(
              child: Text('Hello world'),
            ),
          ),
        ));
  }
}

// Container -> Center -> Text