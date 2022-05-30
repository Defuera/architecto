import 'package:base/model/post.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({
    required this.post,
    this.onTap,
    this.onLike,
    Key? key,
  }) : super(key: key);

  final Post post;
  final VoidCallback? onTap;
  final VoidCallback? onLike;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(post.name),
        trailing: IconButton(
          onPressed: onLike,
          icon: post.liked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
        ),
        onTap: onTap,
      );
}
