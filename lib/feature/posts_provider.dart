import 'package:architecto/model/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsProvider = StateNotifierProvider<TestPostsNotifier, List<Post>>((ref) => TestPostsNotifier());

class TestPostsNotifier extends StateNotifier<List<Post>> {
  TestPostsNotifier() : super([]) {
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 1));
    state = List<Post>.generate(3, generatePost);
  }

  void click() {
    state = List<Post>.generate(3, generatePost);
  }

  Post generatePost(int index) => Post(name: 'Post $index', liked: index % 2 == 0);

  void like(Post post) {
    final thisList = state;
    final updatedList = thisList.map((e) {
      if (e.name == post.name){
        return Post(name: post.name, liked: !post.liked);
      } else {
        return e;
      }
    });

    state = updatedList.toList();
  }
}
