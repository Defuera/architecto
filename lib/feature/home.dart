import 'package:architecto/feature/feed_widget.dart';
import 'package:architecto/feature/post_widget.dart';
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
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: FeedWidget(onPostSelected: (post) => setState(() => selectedPost = post)),
              ),
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: selectedPost == null ? const CircularProgressIndicator() : PostWidget(postId: selectedPost!.name),
              color: Colors.red.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
