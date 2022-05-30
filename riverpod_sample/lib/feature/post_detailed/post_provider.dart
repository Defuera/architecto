import 'package:base/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/feed/posts_provider.dart';

final postProvider = StateNotifierProvider.autoDispose.family<PostNotifier, Post, String>(PostNotifier.new);

class PostNotifier extends StateNotifier<Post> {
  PostNotifier(this.ref, String id)
      : post = ref.watch(postsProvider).value!.firstWhere((element) => element.name == id),
        super(ref.watch(postsProvider).value!.firstWhere((element) => element.name == id));

  final AutoDisposeStateNotifierProviderRef ref;
  final Post post;

  void like() {
    ref.read(postsProvider.notifier).like(post);
  }
}