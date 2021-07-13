import 'package:ex2_form/widgets/customer_button.dart';
import 'package:ex2_form/widgets/customer_textfield.dart';
import 'package:ex2_form/widgets/dropDownList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        CustomerTextField('User Name'),
        CustomerTextField('Password'),
        CustomButton()
      ],
    );
  }
}

