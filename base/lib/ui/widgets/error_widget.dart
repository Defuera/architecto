import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    this.errorMessage,
    this.onRetry,
    Key? key,
  }) : super(key: key);

  final String? errorMessage;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    //todo localise
    return Column(
      children: [
        Text(errorMessage ?? 'Oops, something went wrong'),
        if (onRetry != null)
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
      ],
    );
  }
}
