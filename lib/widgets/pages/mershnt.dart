import 'package:ex2_form/widgets/customer_button.dart';
import 'package:ex2_form/widgets/dropDownList.dart';
import 'package:flutter/cupertino.dart';

import '../customer_textfield.dart';

class MershantWidget extends StatefulWidget{
  @override
  _MershantWidgetState createState() => _MershantWidgetState();
}

class _MershantWidgetState extends State<MershantWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        CustomerTextField('User Name'),
        CustomerTextField('Password'),
        CustomerTextField('Shop Name'),
        CustomerTextField('Shop Cat'),
        CustomerTextField('Bio'),
        CustomDropDown(),
        CustomButton()
      ],
    );
  }
}