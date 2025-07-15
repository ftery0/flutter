import 'package:flutter/material.dart';
import 'package:time_manager/widgets/custom_text_form_field.dart';
import 'package:time_manager/screens/common/login_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomTextFormField(
                    labelText: '이름',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '이름을 입력해주세요.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormField(
                    labelText: '이메일',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '이메일을 입력해주세요.';
                      }
                      // Simple email format validation
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return '유효한 이메일 주소를 입력해주세요.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormField(
                    labelText: '비밀번호',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '비밀번호를 입력해주세요.';
                      }
                      if (value.length < 6) {
                        return '비밀번호는 최소 6자 이상이어야 합니다.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, process data.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('회원가입 처리 중...')),
                        );
                        // TODO: Simulate a network request for signup
                        /*
                        try {
                          // Simulate an API call
                          // await ApiService().signup(name, email, password, department);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('회원가입 성공!')),
                          );
                          // Navigate to login or home screen
                          // Navigator.pushReplacementNamed(context, '/login');
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('회원가입 실패: ${e.toString()}')),
                          );
                        }
                        */
                          Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      }
                    },
                    child: const Text('회원가입'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}