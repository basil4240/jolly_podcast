import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_colors.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_text_styles.dart';
import 'package:stacked_services/stacked_services.dart';

/// A custom dialog widget for displaying network errors and offering retry/cancel options.
///
/// This dialog is designed to be used with Stacked's DialogService and provides
/// a user-friendly way to handle network-related failures by allowing the user
/// to reattempt the operation or dismiss the error.
class NetworkRetryDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const NetworkRetryDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colors.color7,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              request.title ?? 'Network Error',
              style: textStyles.pageTitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              request.description ??
                  'An error occurred. Would you like to retry?',
              style: textStyles.pageSubtitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => completer(DialogResponse(confirmed: true)),
                  child: Text(
                    request.mainButtonTitle ?? 'Retry',
                    style:
                        textStyles.buttonText?.copyWith(color: colors.color1),
                  ),
                ),
                TextButton(
                  onPressed: () => completer(DialogResponse(confirmed: false)),
                  child: Text(
                    request.secondaryButtonTitle ?? 'Cancel',
                    style: textStyles.buttonText
                        ?.copyWith(color: colors.whiteColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
