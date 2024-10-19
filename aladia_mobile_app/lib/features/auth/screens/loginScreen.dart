import 'package:aladia_mobile_app/features/auth/Bloc/theme_bloc.dart';
import 'package:aladia_mobile_app/features/auth/Bloc/theme_event.dart';
import 'package:aladia_mobile_app/features/auth/widgets/appLogo.dart';
import 'package:aladia_mobile_app/features/auth/widgets/divider.dart';
import 'package:aladia_mobile_app/features/auth/widgets/emailInputField.dart';
import 'package:aladia_mobile_app/features/auth/widgets/headerCard.dart';
import 'package:aladia_mobile_app/features/auth/widgets/primaryButton.dart';
import 'package:aladia_mobile_app/features/auth/widgets/socialLoginButton.dart';
import 'package:aladia_mobile_app/features/auth/widgets/termAndConditionText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginscreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve current theme data from the context
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      // Dynamic background color based on theme
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

            
                SizedBox(height: 20), // Adjust spacing as needed
                HeaderCard(),
                SizedBox(height: 30),

                Center(
                  child: Text(
                    "Enter your email",
                    // Dynamic text color based on theme
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'E-mail',
                  icon: Icons.email,
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  text: 'Enter',
                  onPressed: () {
                    // Handle enter action
                  },
                ),
                const SizedBox(height: 30),
                DividerOr(),
                const SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Google',
                  imagePath: 'assets/images/google.png',
                  onPressed: () {
                    // Handle Google login
                  },
                ),
                const SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Facebook',
                  imagePath: 'assets/images/facebook.png',
                  onPressed: () {
                    // Handle Facebook login
                  },
                ),
                const SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Apple',
                  imagePath: 'assets/images/apple.png',
                  onPressed: () {
                    // Handle Apple login
                  },
                ),
                const SizedBox(height: 30),
                TermsText(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
