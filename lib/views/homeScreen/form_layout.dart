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
          TextFormField(
            controller: nameTEController,
            keyboardType: TextInputType.name,
            smartDashesType: SmartDashesType.enabled,
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.text_snippet),
              hintText: nameTextFieldHint,
            ),
            validator: (value){
              if(value!.isEmpty){
                return nameTextFieldError;
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const Gap(10),
          TextFormField(
            controller: phoneNumberTEController,
            keyboardType: TextInputType.number,
            smartDashesType: SmartDashesType.enabled,
            maxLength: 11,
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.phone),
              hintText: phoneNumberTextFieldHint,
            ),
            validator: (value){
              if(value!.isEmpty){
                return phoneNumberTextFieldError;
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ],
      ),
    );
  }
}
