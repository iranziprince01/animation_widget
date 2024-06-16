import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Widget Exercise',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Widget Exercise'),
        ),
        body: Center(
          child: AnimatedContainerDemo(),
        ),
      ),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isExpanded = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleContainer,
      child: AnimatedContainer(
        width: _isExpanded ? 200.0 : 100.0,
        height: _isExpanded ? 200.0 : 100.0,
        color: _isExpanded ? Colors.blue : Colors.green,
        alignment: Alignment.center,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: Text(
          'Tap me!',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
