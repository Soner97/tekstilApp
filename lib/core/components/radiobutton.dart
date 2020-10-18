import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class RadioButtonWidget extends StatelessWidget {
  final List<String> radioButtonName;

  const RadioButtonWidget({Key key, this.radioButtonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: radioButtonName.length,
        itemBuilder: (context, index) => Column(
          children: [
            RadioButtonGroup(
                labels: <String>[
                  '${radioButtonName[index]}',
                ],
                onSelected: (String selected) {
                  Navigator.of(context).pop();
                  print(selected);
                }),
          ],
          //
        ),
      ),
    );
  }
}
