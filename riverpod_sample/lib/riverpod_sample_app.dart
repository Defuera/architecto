import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/feed/feed_screen.dart';

class RiverpodSampleApp extends StatelessWidget {
  const RiverpodSampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProviderScope(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const FeedScreen(),
        ),
      );
}

