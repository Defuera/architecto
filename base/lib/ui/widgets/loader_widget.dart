import 'package:flutter/material.dart';

class AppLoaderWidget extends StatelessWidget {
  const AppLoaderWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Center(
       child: CircularProgressIndicator(),
    );
  }
}
