import 'package:base/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/feed/posts_provider.dart';
import 'package:riverpod_sample/services/post_repository.dart';

final postDetailedControllerProvider = StateNotifierProvider.autoDispose.family<PostDetailedController, Post, String>(
  (ref, id) {
    final posts = ref.watch(postsRepositoryProvider);

    return PostDetailedController(ref, id);
  },
);

class PostDetailedController extends StateNotifier<Post> {
  PostDetailedController(this.ref, String id)
      : post = ref.watch(postsRepositoryProvider).value!.firstWhere((element) => element.name == id),
        super(ref.watch(postsControllerProvider).value!.firstWhere((element) => element.name == id));

  final AutoDisposeStateNotifierProviderRef ref;
  final Post post;

  void like() {
    ref.read(postsControllerProvider.notifier).like(post);
  }

  void onLikePressed() {
    //todo
  }
}
