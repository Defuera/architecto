import 'package:base/model/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_bloc.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const FeedState._();

  const factory FeedState.loading() = _FeedStateLoading;

  const factory FeedState.error(String errorMessage) = _FeedStateError;

  const factory FeedState.data(List<Post> posts) = _FeedStateData;

  const factory FeedState.empty() = _FeedStateEmpty;
}

class FeedBloc extends Cubit<FeedState> {
  FeedBloc() : super(const FeedState.loading()) {
    _init();
  }

  Future<void> _init() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    emit(const FeedState.empty());
  }

  Future<void> retry() async {
    emit(const FeedState.loading());
    await Future<void>.delayed(const Duration(seconds: 1));
    emit(FeedState.data(_generatePosts(3)));
  }

  void like(Post post) {
    //todo
  }

  void onLoadMoreClicked() {
    //todo
  }

  Future<void> onPostClicked(Post post) async {
    //todo navigate to detailed screen
  }
}

List<Post> _generatePosts(int count, [Post Function(int) generator = _generatePost]) =>
    List<Post>.generate(count, generator);

Post _generatePost(int index) => Post(name: 'Post $index', liked: index.isEven);
