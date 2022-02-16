import 'package:architecto/feature/posts_provider.dart';
import 'package:architecto/model/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WidgetOne extends ConsumerWidget {
  const WidgetOne({required this.onPostSelected, Key? key}) : super(key: key);

  final Function(Post) onPostSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...ref.watch(postsProvider).map((post) => _PostListItem(
                post: post,
                onTap: () => onPostSelected(post),
              )),
        ],
      );
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
