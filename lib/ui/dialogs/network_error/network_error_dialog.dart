import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'network_error_dialog_model.dart';

class NetworkErrorDialog extends StackedView<NetworkErrorDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const NetworkErrorDialog({
    super.key,
    required this.request,
    required this.completer,
  });

  @override
  Widget builder(
    BuildContext context,
    NetworkErrorDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }

  @override
  NetworkErrorDialogModel viewModelBuilder(BuildContext context) =>
      NetworkErrorDialogModel();
}
