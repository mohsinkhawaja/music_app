import 'package:flutter/material.dart';
import 'package:music_app/core/theme/app_pallete.dart';
import 'package:music_app/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:music_app/features/auth/view/widgets/custom_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formkey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign In.",
                style: TextStyle(
                    color: Pallete.whiteColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomField(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomField(
                hintText: "Password",
                controller: passwordController,
                isobscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              AuthGradientButton(
                buttonText: 'Sign In',
                onTap: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Pallete.whiteColor),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Pallete.gradient2)),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
