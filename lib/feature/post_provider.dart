import 'package:architecto/feature/posts_provider.dart';
import 'package:architecto/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postProvider = StateNotifierProvider<PostNotifier, Post>((ref) => PostNotifier(ref));

class PostNotifier extends StateNotifier<Post> {
  PostNotifier(this.ref)
      : post = ref.watch(postsProvider).first,
        super(ref.watch(postsProvider).first);

  final StateNotifierProviderRef ref;
  final Post post;

  void like() {
    ref.read(postsProvider.notifier).like(post);
  }
}
