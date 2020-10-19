import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/context_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;

  const TextFieldWidget({Key key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.08),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
            // changes position of shadow
          ),
        ],
      ),
      margin: context.paddingHorizontalMedium,
      child: new TextField(
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(40.0),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800]),
            hintText: ("$hint"),
            fillColor: Colors.white70),
      ),
    );
  }
}
