// import 'package:flutter/material.dart';
// import 'package:grouped_buttons/grouped_buttons.dart';

// class RadioButtonWidget extends StatelessWidget {
//   final List<String> radioButtonName;
//   final List<String> selectedValue;

//   const RadioButtonWidget({
//     Key key,
//     this.radioButtonName,
//     this.selectedValue,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: radioButtonName.length,
//         itemBuilder: (context, index) => Column(
//           children: [
//             RadioButtonGroup(
//                 labels: <String>[
//                   '${radioButtonName[index]}',
//                 ],
//                 onSelected: (String selected) {
//                   Navigator.of(context).pop();
//                   print(selected);
//                   selectedValue.add(selected);
//                 }),
//           ],
//           //
//         ),
//       ),
//     );
//   }
// }
