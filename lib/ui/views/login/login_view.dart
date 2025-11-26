import 'package:flutter/material.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_input_decorations.dart';
import 'package:jolly_podcast/ui/common/theme_extensions/app_text_styles.dart';
import 'package:stacked/stacked.dart';

import '../../common/theme_extensions/app_colors.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;
    final inputDecorations =
        Theme.of(context).extension<AppInputDecorations>()!;

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pngs/main_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: viewModel.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 74),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Image.asset(
                        'assets/pngs/jolly_logo.png',
                        height: 77,
                        errorBuilder: (context, error, stackTrace) => Container(
                          height: 77,
                          width: 172,
                          color: Colors.white24,
                          child: const Center(child: Text('Logo')),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text('Login', style: textStyles.onboardingTitle),
                    const SizedBox(height: 28),
                    Text('Phone number', style: textStyles.formFieldLabel),
                    const SizedBox(height: 6),
                    TextFormField(
                      style: textStyles.formFieldInput,
                      keyboardType: TextInputType.phone,
                      decoration: inputDecorations.inputDecoration,
                      onChanged: viewModel.setPhoneNumber,
                      validator: viewModel.validatePhoneNumber,
                    ),
                    const SizedBox(height: 20),
                    Text('Create password', style: textStyles.formFieldLabel),
                    const SizedBox(height: 6),
                    Builder(builder: (context) {
                      return TextFormField(
                        style: textStyles.formFieldInput,
                        obscureText: !viewModel.isPasswordVisible,
                        decoration: inputDecorations.inputDecoration?.copyWith(
                          suffixIcon: IconButton(
                              icon: Icon(
                                viewModel.isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: colors.whiteColor,
                              ),
                              onPressed: () => viewModel.isPasswordVisible =
                                  !viewModel.isPasswordVisible),
                        ),
                        onChanged: viewModel.setPassword,
                        validator: viewModel.validatePassword,
                      );
                    }),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: viewModel.onLogin,
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: colors.color1,
                          borderRadius: BorderRadius.circular(50),
                          // boxShadow: viewModel.isButtonPressed ? [] : kBoxShadowButton,
                        ),
                        child: Center(
                          child: viewModel.isBusy
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: const CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  ),
                                )
                              : Text('Login', style: textStyles.buttonText),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
