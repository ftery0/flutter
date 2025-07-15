import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_manager/models/user.dart';
import 'package:time_manager/providers/user_provider.dart';
import 'package:time_manager/widgets/custom_text_form_field.dart';
import 'package:time_manager/screens/common/signup_screen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomTextFormField(
                  labelText: '이메일',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormField(
                  labelText: '비밀번호',
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement login logic
                  },
                  child: const Text('로그인'),
                ),
                const SizedBox(height: 16.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                  },
                  child: const Text('Don\'t have an account? Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}