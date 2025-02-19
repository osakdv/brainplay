import 'package:flutter/material.dart';

import '../../../components/customTextFormField/custom_text_form_field.dart';
import '../../../components/button/custom_button.dart';
import '../../../helpers/validation_helper.dart';
import '../../../services/models/enum.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);

    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFieldField(
              hint: 'johndoe@gmail.com',
              type: TextFieldType.regular,
              validation: FormValidators.validateEmail,
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CustomTextFieldField(
                hint: 'First name',
                type: TextFieldType.regular,
                validation: FormValidators.validateRequired,
                width: mq.size.width * .44,
              ),
              CustomTextFieldField(
                hint: 'Last name',
                type: TextFieldType.regular,
                validation: FormValidators.validateRequired,
                width: mq.size.width * .44,
              ),
            ]),
            const SizedBox(height: 10),
            CustomTextFieldField(
              hint: 'First name',
              type: TextFieldType.regular,
              validation: FormValidators.validateRequired,
            ),
            const SizedBox(height: 10),
            CustomTextFieldField(
              hint: 'First name',
              type: TextFieldType.password,
              validation: FormValidators.validatePassword,
            ),
            const SizedBox(height: 10),
            CustomTextFieldField(
              hint: 'First name',
              type: TextFieldType.password,
              validation: FormValidators.validatePassword,
            ),
            const SizedBox(height: 30),
            CustomButton(
              title: "Signup",
              onTap: () {
                _formKey.currentState!.validate();
              },
            ),
          ],
        ));
  }
}
