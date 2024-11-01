import 'package:cleanarchitecture/core/theme/app_pallete.dart';
import 'package:cleanarchitecture/features/auth/presentation/pages/login_page.dart';
import 'package:cleanarchitecture/features/auth/presentation/widgets/auth_field.dart';
import 'package:cleanarchitecture/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState.validate();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthField(
                hint: "Name",
                controller: nameController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(
                hint: "email",
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(
                hint: "Password",
                controller: passwordController,
                isObsecureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(
                text: "Sign Up",
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: RichText(
                  text: TextSpan(
                      text: "have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                            text: "Sign In",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
