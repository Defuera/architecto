import 'package:base/model/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/feed_provider.dart';

class FeedWidget extends ConsumerWidget {
  const FeedWidget({required this.onPostSelected, Key? key}) : super(key: key);

  final Function(Post) onPostSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build WidgetOne');

    final posts = ref.watch(postsProvider);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) => _PostListItem(
              post: posts[index],
              onTap: () => onPostSelected(posts[index]),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: ref.watch(postsProvider.notifier).loadMore,
          child: const Text('Load more'),
        )
      ],
    );
  }
}

class _PostListItem extends ConsumerWidget {
  const _PostListItem({required this.post, this.onTap, Key? key}) : super(key: key);

  final Post post;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListTile(
        title: Text(post.name),
        trailing: IconButton(
          onPressed: () => ref.read(postsProvider.notifier).like(post),
          icon: post.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
        ),
        onTap: onTap,
      );
}
