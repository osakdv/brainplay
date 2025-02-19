import 'package:flutter/material.dart';

import '../../../services/models/enum.dart';
import '../../../components/customTextFormField/custom_text_form_field.dart';
import '../../../components/button/custom_button.dart';
import '../../../helpers/validation_helper.dart';

class RegOrLoginForm extends StatefulWidget {
  const RegOrLoginForm({super.key});

  @override
  State<RegOrLoginForm> createState() => _RegOrLoginFormState();
}

class _RegOrLoginFormState extends State<RegOrLoginForm> {
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
          const SizedBox(height: 20),
          CustomButton(
            title: "Continue",
            onTap: () {
              _formKey.currentState!.validate();
            },
          ),
        ]));
  }
}
