import 'package:flutter/material.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';
import 'package:modern_pos/widgets/loading.dart';

class LoadingStateWidget extends StatefulWidget {
  const LoadingStateWidget(
      {super.key,
      required this.loadingState,
      required this.loadingSuccessWidget,
      required this.errorMessage,
      required this.loadingInitWidget});

  final LoadingState loadingState;
  final Widget loadingSuccessWidget;
  final Widget loadingInitWidget;
  final String errorMessage;

  @override
  State<LoadingStateWidget> createState() => _LoadingStateWidgetState();
}

class _LoadingStateWidgetState extends State<LoadingStateWidget> {
  @override
  Widget build(BuildContext context) {
    return switch (widget.loadingState) {
      LoadingState.init => widget.loadingInitWidget,
      LoadingState.loading => const LoadingWidget(),
      LoadingState.error =>
        CustomErrorWidget(errorMessage: widget.errorMessage),
      _ => widget.loadingSuccessWidget,
    };
  }
}
