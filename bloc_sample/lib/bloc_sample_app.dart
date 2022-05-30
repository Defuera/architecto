import 'package:bloc_sample/feature/feed/feed_screen.dart';
import 'package:flutter/material.dart';

class BlocSampleApp extends StatelessWidget {
  const BlocSampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>  MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const FeedScreen(),
  );
}

