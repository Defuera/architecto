import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/splash/app_initializer_controller.dart';

class AppInitializer extends ConsumerWidget {
  const AppInitializer({required this.app, super.key});

  final Widget app;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appInitializerControllerProvider);
    // final controller = ref.read(appInitializerControllerProvider.notifier);

    return state.when(
      data: (data) => app,
      error: (error, st) => Center(
        child: Text('error ${error.toString()}'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
