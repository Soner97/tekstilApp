import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/text.dart';

class SearchService extends StatefulWidget {
  @override
  _SearchServiceState createState() => _SearchServiceState();
}

class _SearchServiceState extends State<SearchService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LabelText('Hizmet Arayın'),
      ),
    );
  }
}
