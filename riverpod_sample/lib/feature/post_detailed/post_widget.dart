import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/feature/post_detailed/post_provider.dart';

class PostWidget extends ConsumerWidget {
  const PostWidget({required this.postId, Key? key}) : super(key: key);

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postProvider(postId));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('_WidgetTwo: ${state.name}'),
        IconButton(
          iconSize: 96,
          onPressed: () {
            print('like ${state.name}');
            ref.read(postProvider(postId).notifier).like();
          },
          icon: state.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}
