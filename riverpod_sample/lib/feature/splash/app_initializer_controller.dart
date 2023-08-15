import 'package:flutter_riverpod/flutter_riverpod.dart';

final appInitializerControllerProvider = StateNotifierProvider<AppInitializerController, AsyncValue<bool>>(
  AppInitializerController.new,
);

class AppInitializerController extends StateNotifier<AsyncValue<bool>> {
  AppInitializerController(this._ref) : super(const AsyncValue.loading()) {
    _init();
  }

  // ignore: unused_field
  final Ref _ref;

  Future<void> _init() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    // Dependencies initialized!
    state = const AsyncValue.data(true);
  }
}
