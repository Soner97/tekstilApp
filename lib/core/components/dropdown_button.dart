import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/text.dart';

class DropDownButtonWidget extends StatefulWidget {
  final String hintName;
  final List<String> data;

  const DropDownButtonWidget({Key key, this.hintName, this.data})
      : super(key: key);

  @override
  _DropDownButtonWidgetState createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String _value;
  // List data = List();
  //List data = widget.data
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: widget.data.map((item) {
        return DropdownMenuItem(
          child: LabelTextDetail("$item"),
          value: item,
        );
      }).toList(),
      onChanged: (String item) {
        setState(() {
          _value = item;
        });
      },
      hint: LabelTextDetail(widget.hintName),
      value: _value,
    );
  }
}
