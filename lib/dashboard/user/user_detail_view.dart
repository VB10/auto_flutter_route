import 'package:auto_flutter_route/dashboard/user/model/user_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class UserDetailView extends StatefulWidget {
  const UserDetailView({Key? key, required this.model}) : super(key: key);
  final UserModel model;
  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> with AutoRouteAwareStateMixin {
  late UserModel _model;

  @override
  void didUpdateWidget(covariant UserDetailView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      _updateModel();
    }
  }

  @override
  void initState() {
    super.initState();
    _model = widget.model;
  }

  void _updateModel() {
    setState(() {
      _model = widget.model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.network(_model.avatarUrl)),
      body: Text(_model.imageUrl),
    );
  }
}
