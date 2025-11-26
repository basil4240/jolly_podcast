import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'app_input_field_model.dart';

class AppInputField extends StackedView<AppInputFieldModel> {
  const AppInputField({super.key});

  @override
  Widget builder(
    BuildContext context,
    AppInputFieldModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  AppInputFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppInputFieldModel();
}
