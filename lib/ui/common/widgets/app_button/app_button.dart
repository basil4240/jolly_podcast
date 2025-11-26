import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'app_button_model.dart';

class AppButton extends StackedView<AppButtonModel> {
  const AppButton({super.key});

  @override
  Widget builder(
    BuildContext context,
    AppButtonModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  AppButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppButtonModel();
}
