import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String error;
  const ErrorText({ super.key, required this.error });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error'),
      );
  }
}

class ErrorPage extends StatelessWidget {
  final String error;
  const ErrorPage({ super.key, required this.error });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ErrorText(error: 'Error'),
    );
  }
}