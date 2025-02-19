import 'package:flutter/material.dart';

import '../../../services/models/enum.dart';
import '../../../components/customTextFormField/custom_text_form_field.dart';
import '../../../components/button/custom_button.dart';
import '../../../helpers/validation_helper.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          CustomTextFieldField(
            hint: 'johndoe@gmail.com',
            type: TextFieldType.regular,
            validation: FormValidators.validateEmail,
          ),
          const SizedBox(height: 15),
          CustomTextFieldField(
            hint: 'Password',
            type: TextFieldType.password,
            validation: FormValidators.validatePassword,
          ),
          const SizedBox(height: 20),
          CustomButton(
            title: "Login",
            onTap: () {
              _formKey.currentState!.validate();
            },
          ),
        ]));
  }
}
