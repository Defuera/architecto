import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProviderScope(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ParentWidget(),
        ),
      );
}


/// Task is to find ways to design a child widget that will not be rebuilt when parent build method is triggered
class ParentWidget extends StatefulWidget {
  const ParentWidget({Key? key}) : super(key: key);

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

var _buildCounter = 0;
var _childOneBuildCounter = 0;
var _childTwoBuildCounter = 0;
var _childThreeBuildCounter = 0;

class _ParentWidgetState extends State<ParentWidget> {

  final widgetTwo = _NotRebuildableChildTwo();



  @override
  Widget build(BuildContext context) {
    _buildCounter++;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Parent rebuild count: $_buildCounter'),
            ElevatedButton(
              onPressed: () => setState(() {}),
              child: const Text('Rebuild parent'),
            ),


            /// Will not be rebuild cause it's const
            const _NotRebuildableChildOne(),

            /// Will not be rebuild cause it's created outside of build method
            widgetTwo,

            _NotRebuildableChildThree(key: ValueKey('one'),),
          ],
        ),
      ),
    );
  }
}

class _NotRebuildableChildOne extends StatelessWidget {
  const _NotRebuildableChildOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _childOneBuildCounter++;

    return Container(
      alignment: Alignment.center,
      height: 80,
      width: double.infinity,
      color: Colors.blue.withOpacity(0.2),
      child: Text("Child one build count: $_childOneBuildCounter\nI will not rebuild, cause I'm const"),
    );
  }
}


/// Can be both statefull or stateless. The trick it's created in a parent outside build method
class _NotRebuildableChildTwo extends StatelessWidget {
  _NotRebuildableChildTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _childTwoBuildCounter++;

    return Container(
      alignment: Alignment.center,
      height: 80,
      width: double.infinity,
      color: Colors.red.withOpacity(0.2),
      child: Text("Child two build count: $_childTwoBuildCounter"),
    );
  }
}

class _NotRebuildableChildThree extends StatefulWidget {
  const _NotRebuildableChildThree({Key? key}) : super(key: key);

  @override
  State<_NotRebuildableChildThree> createState() => _NotRebuildableChildThreeState();
}

class _NotRebuildableChildThreeState extends State<_NotRebuildableChildThree> {

  @override
  Widget build(BuildContext context) {
    _childThreeBuildCounter++;

    return Container(
      alignment: Alignment.center,
      height: 80,
      width: double.infinity,
      color: Colors.green.withOpacity(0.2),
      child: Text("Child three build count: $_childThreeBuildCounter"),
    );
  }
}
