import 'package:base/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/feed/posts_provider.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postsProvider);
    final controller = ref.read(postsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Riverpod'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RefreshIndicator(
          onRefresh: controller.retry,
          child: state.when(
            error: (error, st) => AppErrorWidget(
              errorMessage: error.toString(),
              onRetry: controller.retry,
            ),
            loading: AppLoaderWidget.new,
            data: (posts) => posts == null || posts.isEmpty
                ? AppEmptyWidget(
                    title: 'No posts yet',
                    onRetry: controller.retry,
                  )
                : Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: posts.length,
                          itemBuilder: (context, index) => PostListItem(
                            post: posts[index],
                            onTap: () => controller.onPostClicked(posts[index]),
                            onLike: () => controller.like(posts[index]),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: controller.onLoadMoreClicked,
                        child: const Text('Load more'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(54),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
