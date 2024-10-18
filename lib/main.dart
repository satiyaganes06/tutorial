import 'package:flutter/material.dart';
import 'package:tutorial/navigation/page2.dart';
import 'package:tutorial/widgets/icon_widget.dart';
import 'package:tutorial/widgets/image_widget.dart';

import 'navigation/username_navigator_example/username_form.dart';
import 'widgets/button_widget.dart';
import 'widgets/container_widget.dart';
import 'widgets/text_widget.dart';
import 'widgets/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      routes: {
        '/page2': (context) => const TestPage2(),
        '/username': (context) => UsernameForm(),
      },
      home: const MyHomePage(title: 'Basic Widgets'),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: [
            ElevatedButton(
              child: const  Text('Text'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TextWidget()));
            }),

            ElevatedButton(
              child: const  Text('Container'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContainerWidget()));
            }),

            ElevatedButton(
              child: const  Text('Icon'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const IconWidget()));
            }),

            ElevatedButton(
              child: const  Text('Image'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageWidget()));
            }),

            ElevatedButton(
              child: const  Text('Button'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const ButtonWidget()));
            }),

            ElevatedButton(
              child: const  Text('Column'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('Row'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('TextField'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TextFieldWidget()));
            }),

            ElevatedButton(
              child: const  Text('ListView'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('FloatingActionButton'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('SizedBox'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('FractionallySizedBox'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('Stack'),
              onPressed: (){

            }),

            ElevatedButton(
              child: const  Text('Basic Navigation'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TestPage2()));
            }),

            ElevatedButton(
              child: const  Text('Named Navigation'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TestPage2()));
               // Navigator.pushNamed(context, '/page2', arguments: 'Hello World');
            }),

            ElevatedButton(
              child: const  Text('Username Navigator Example'),
              onPressed: (){
                Navigator.pushNamed(context, '/username');
            }),
          ],
        ),
      ),
      
    );
  }
}
