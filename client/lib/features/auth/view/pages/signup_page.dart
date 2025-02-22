import 'package:flutter/material.dart';
import 'package:music_app/core/theme/app_pallete.dart';
import 'package:music_app/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:music_app/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
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
                "Sign UP.",
                style: TextStyle(
                    color: Pallete.whiteColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomField(
                hintText: "Name",
                controller: nameController,
              ),
              const SizedBox(
                height: 15.0,
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
                buttonText: "Sign Up",
                onTap: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Pallete.whiteColor),
                    children: [
                      TextSpan(
                          text: 'Sign In',
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
