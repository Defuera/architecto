import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/post_detailed/post_provider.dart';

class PostDetailedScreen extends ConsumerWidget {
  const PostDetailedScreen({required this.postId, Key? key}) : super(key: key);

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = postDetailedControllerProvider(postId);
    final state = ref.watch(provider);
    final controller = ref.read(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Post $postId'),),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('_WidgetTwo: ${state.name}'),
          IconButton(
            iconSize: 96,
            onPressed: () {
              controller.onLikePressed();

            },
            icon: state.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
