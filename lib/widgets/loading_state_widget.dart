import 'package:flutter/material.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/loading_widget.dart';

class LoadingStateWidget extends StatefulWidget {
  const LoadingStateWidget(
      {super.key,
      required this.loadingState,
      required this.loadingSuccessWidget,
      required this.loadingInitWidget});

  final LoadingState loadingState;
  final Widget loadingSuccessWidget;
  final Widget loadingInitWidget;

  @override
  State<LoadingStateWidget> createState() => _LoadingStateWidgetState();
}

class _LoadingStateWidgetState extends State<LoadingStateWidget> {
  @override
  Widget build(BuildContext context) {
    return switch (widget.loadingState) {
      LoadingState.init => widget.loadingInitWidget,
      LoadingState.loading => const LoadingWidget(),
      LoadingState.error => widget.loadingInitWidget,
      _ => widget.loadingSuccessWidget,
    };
  }
}
