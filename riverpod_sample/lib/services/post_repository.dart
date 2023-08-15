import 'package:base/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsRepositoryProvider = StateNotifierProvider((ref) {
  return PostsRepository(ref);
});

List<Post> _generatePosts(int count, [Post Function(int) generator = _generatePost]) =>
    List<Post>.generate(count, generator);

Post _generatePost(int index) => Post(name: 'Post $index', liked: index.isEven);

class PostsRepository extends StateNotifier<AsyncValue<List<Post>>> {
  PostsRepository(this.ref) : super(const AsyncValue.loading()) {
    loadPage();
  }

  final Ref ref;

  Future<void> loadPage() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    state = AsyncValue.data(_generatePosts(10));
  }

//     : post = ref.watch(postsControllerProvider).value!.firstWhere((element) => element.name == id),
//       super(ref.watch(postsControllerProvider).value!.firstWhere((element) => element.name == id));
//
// final AutoDisposeStateNotifierProviderRef ref;
// final Post post;
//
// void like() {
//   ref.read(postsControllerProvider.notifier).like(post);
// }
}
