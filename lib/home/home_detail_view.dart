import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
      ),
    );
  }
}
