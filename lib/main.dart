import 'package:flutter/material.dart';
import 'package:riverpod_sample/riverpod_sample_app.dart';

/// flutter run --dart-define="flavor=bloc"
void main() {
  // const flavor = String.fromEnvironment("flavor");
  // if (flavor == "bloc") {
  //   runApp(const BlocSampleApp());
  // } else {
    runApp(const RiverpodSampleApp());
  // }
}
