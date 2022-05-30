import 'package:base/widgets.dart';
import 'package:bloc_sample/feature/feed/feed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Bloc'),
      ),
      body: BlocProvider<FeedBloc>(
        create: (_) => FeedBloc(),
        child: BlocBuilder<FeedBloc, FeedState>(
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: state.when(
              error: (error) => AppErrorWidget(
                errorMessage: error.toString(),
                onRetry: context.read<FeedBloc>().retry,
              ),
              loading: AppLoaderWidget.new,
              empty: () => AppEmptyWidget(
                title: 'No posts yet',
                onRetry: context.read<FeedBloc>().retry,
              ),
              data: (posts) => Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) => PostListItem(
                        post: posts[index],
                        onTap: () => context.read<FeedBloc>().onPostClicked(posts[index]),
                        onLike: () => context.read<FeedBloc>().like(posts[index]),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: context.read<FeedBloc>().onLoadMoreClicked,
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
      ),
    );
  }
}
