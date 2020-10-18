import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/alert_dialog.dart';
import 'package:tekstilcim/core/components/text.dart';
import 'package:tekstilcim/core/context_extension.dart';

class ServiceAD extends StatefulWidget {
  @override
  _ServiceADState createState() => _ServiceADState();
}

class _ServiceADState extends State<ServiceAD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [
              Expanded(child: LabelText('Hangi hizmeti arıyorsunuz?'))
            ],
          ),
        ),
        Container(
            padding: context.paddingLow,
            margin: context.paddingLow,
            child: AlertDialogWidget(
              buttonName: 'Hizmet Seç',
              radioButtonName: ['soner', 'karaevli'],
            )),
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [Expanded(child: LabelText('İş yeriniz nerede?'))],
          ),
        )
      ],
    ));
  }
}
