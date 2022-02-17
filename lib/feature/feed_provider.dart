import 'package:architecto/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsProvider = StateNotifierProvider<TestPostsNotifier, List<Post>>((ref) => TestPostsNotifier());

class TestPostsNotifier extends StateNotifier<List<Post>> {
  TestPostsNotifier() : super([]) {
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 1));
    state = _generatePosts(3);
  }

  void like(Post post) {
    final thisList = state;
    final updatedList = thisList.map((e) {
      if (e.name == post.name) {
        return Post(name: post.name, liked: !post.liked);
      } else {
        return e;
      }
    });

    state = updatedList.toList();
  }

  void loadMore() {
    final List<Post> newPosts = _generatePosts(3, (index) => _generatePost(index + state.length));
    state = state + newPosts;
  }
}

List<Post> _generatePosts(int count, [Post Function(int) generator = _generatePost]) =>
    List<Post>.generate(count, generator);

Post _generatePost(int index) => Post(name: 'Post $index', liked: index % 2 == 0);
