import 'package:flutter/material.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);
  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
    );
  }
}
