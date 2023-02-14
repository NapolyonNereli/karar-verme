import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_widget.dart';
import 'package:flutter_application_1/widgets/result_widget.dart';

class AddItem extends StatelessWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          const ResultWidget(),
          InputWidget(),
        ],
      ),
    );
  }
}
