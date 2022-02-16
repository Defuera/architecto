import 'package:architecto/feature/posts_provider.dart';
import 'package:architecto/model/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// widget one displays list of posts
/// when post is clicked widgetTwo displays detailed view
/// when post is liked on one for two views, the other one must be updated

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  Post? selectedPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: _WidgetOne(onPostSelected: (post) => setState(() => selectedPost = post)),
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: _WidgetTwo(post: selectedPost),
              color: Colors.red.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}

class _WidgetOne extends ConsumerWidget {
  const _WidgetOne({required this.onPostSelected, Key? key}) : super(key: key);

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

class _WidgetTwo extends ConsumerWidget {
  const _WidgetTwo({required this.post, Key? key}) : super(key: key);

  final Post? post;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('_WidgetTwo: ${post?.name ?? ''}'),
          if (post != null)
            IconButton(
              onPressed: () {},
              icon: post!.liked
                  ? const Icon(
                      Icons.favorite,
                      size: 96,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      size: 96,
                    ),
            ),
        ],
      );
}

class _PostListItem extends StatelessWidget {
  const _PostListItem({required this.post, this.onTap, Key? key}) : super(key: key);

  final Post post;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(post.name),
        trailing: post.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
        onTap: onTap,
      );
}
