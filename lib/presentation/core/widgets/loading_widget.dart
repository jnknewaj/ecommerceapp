import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
