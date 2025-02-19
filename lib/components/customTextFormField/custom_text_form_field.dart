import 'package:flutter/material.dart';

import '../../services/models/enum.dart';

class CustomTextFieldField extends StatefulWidget {
  final double? width;
  final String hint;
  final TextFieldType? type;
  final dynamic Function(String)? validation;

  const CustomTextFieldField(
      {this.width, required this.hint, this.type, this.validation, super.key});

  @override
  State<CustomTextFieldField> createState() => _CustomTextFieldFieldState();
}

class _CustomTextFieldFieldState extends State<CustomTextFieldField> {
  bool _isObscure = false;
  
  @override
  void initState() {
    super.initState();
    widget.type == TextFieldType.password
        ? _isObscure = true
        : _isObscure = false;
  }

  dynamic _buildSuffixIcon() {
    if (widget.type == TextFieldType.password) {
      return _isObscure == true
          ? GestureDetector(
              onTap: () {
                setState(() {
                  _isObscure = false;
                });
              },
              child: const Icon(Icons.circle_outlined),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  _isObscure = true;
                });
              },
              child: const Icon(Icons.hide_source_rounded),
            );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextFormField(
        obscureText: _isObscure,
        validator: (val) {
          if (widget.validation != null) {
            if (val != null) {
              return widget.validation!(val);
            }
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: _buildSuffixIcon(),
          hintText: widget.hint,
          contentPadding: const EdgeInsets.all(14),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
