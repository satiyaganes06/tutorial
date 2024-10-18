
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 50),
                shadowColor: Colors.blue,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Elevated Button Pressed'),
                  ),
                );
              },
              child: const Text('Text'),
            ),
            
            IconButton(
              icon: const Icon(Icons.add),
              splashRadius: 20,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Icon Button Pressed'),
                  ),
                );
              },
            ),
        
            TextButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Text Button Pressed'),
                ),
              );
            }, child: const Text('Text Button')),
        
            // GestureDetector (Bonus Widget)
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Gesture Detector Pressed'),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10), 
                    topRight: Radius.circular(20), 
                    bottomLeft: Radius.circular(30), 
                    bottomRight: Radius.circular(60)
                  ),
                  border: Border.all(
                    color: Colors.red, 
                    width: 10.0, 
                    style: BorderStyle.solid
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset:  Offset(10, 10),
                      blurRadius: 40,
                      spreadRadius: 5
                    )
                  ],
                ),
                child: const Center(
                  child: Text('Hello world'),
                ),
              ),
            ),
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.blue,
        tooltip: 'Floating Action Button',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Floating Action Button Pressed'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}