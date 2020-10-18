import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/text.dart';

class SearchProduct extends StatefulWidget {
  @override
  _SearchProductState createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LabelText('Ürün Arayın'),
      ),
    );
  }
}
