import 'dart:ffi';

import 'package:architecto/feature/posts_provider.dart';
import 'package:architecto/model/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// widget one displays list of posts
/// when post is clicked widgetTwo displays detailed view
/// when post is liked on one for two views, the other one must be updated

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const _WidgetOne(),
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const _WidgetTwo(),
              color: Colors.red.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}

class _WidgetOne extends ConsumerWidget {
  const _WidgetOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...ref.watch(postsProvider).map((post) => PostListItem(
                post: post,
                onTap: ,
              )),
        ],
      );
}

class _WidgetTwo extends ConsumerWidget {
  const _WidgetTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('_WidgetTwo :'),
          TextButton(
            onPressed: () {},
            child: const Text('Click'),
          ),
        ],
      );
}

class PostListItem extends StatelessWidget {
  const PostListItem({required this.post, this.onTap, Key? key}) : super(key: key);

  final Post post;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(post.name),
        trailing: post.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
        onTap: onTap,
      );
}
