import 'package:architecto/feature/feed_provider.dart';
import 'package:architecto/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postProvider = StateNotifierProvider.family<PostNotifier, Post, String>((ref, id) => PostNotifier(ref, id));

class PostNotifier extends StateNotifier<Post> {
  PostNotifier(this.ref, String id)
      : post = ref.watch(postsProvider).firstWhere((element) => element.name == id),
        super(ref.watch(postsProvider).firstWhere((element) => element.name == id));

  final StateNotifierProviderRef ref;
  final Post post;

  void like() {
    ref.read(postsProvider.notifier).like(post);
  }
}
