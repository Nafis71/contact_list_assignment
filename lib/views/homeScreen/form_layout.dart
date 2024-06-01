import 'package:contact_list_assignment/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/strings.dart';

class FormLayout extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameTEController;
  final TextEditingController phoneNumberTEController;

  const FormLayout(
      {super.key,
      required this.formKey,
      required this.nameTEController,
      required this.phoneNumberTEController});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            controller: nameTEController,
            hintText: nameTextFieldHint,
            errorText: nameTextFieldError,
            suffixIcon: Icons.drive_file_rename_outline,
            textInputType: TextInputType.name,
          ),
          const Gap(10),
          AppTextField(
            controller: phoneNumberTEController,
            hintText: phoneNumberTextFieldHint,
            errorText: phoneNumberTextFieldError,
            suffixIcon: Icons.phone,
            textInputType: TextInputType.number,
            maxLength: 11,
          ),
        ],
      ),
    );
  }
}
