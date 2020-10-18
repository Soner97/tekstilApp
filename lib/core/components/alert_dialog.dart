import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:tekstilcim/core/components/colors.dart';
import 'package:tekstilcim/core/components/radiobutton.dart';
import 'package:tekstilcim/core/components/text.dart';
import 'package:tekstilcim/core/context_extension.dart';

//Text('${nameRadio[index]}',
// Navigator.of(context).pop();
// ignore: must_be_immutable
class AlertDialogWidget extends StatelessWidget {
  final String buttonName;
  final List<String> radioButtonName;

  const AlertDialogWidget(
      {Key key, @required this.buttonName, this.radioButtonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.06),
      width: context.dynamicWidth(0.6),
      padding: context.paddingLow,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colorsx.mainColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: FlatButton(
          onPressed: () {
            showGeneralDialog(
                context: context,
                barrierDismissible: true,
                barrierLabel:
                    MaterialLocalizations.of(context).modalBarrierDismissLabel,
                barrierColor: Colors.black.withOpacity(0.8),
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (BuildContext buildContext, Animation animation,
                    Animation secondaryAnimation) {
                  return Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: MediaQuery.of(context).size.height - 100,
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                        child: RadioButtonWidget(
                            radioButtonName: this.radioButtonName)),
                  );
                });
          },
          child: LabelText("$buttonName")),
    );
  }
}
