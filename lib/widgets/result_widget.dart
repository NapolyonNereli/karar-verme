import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/const_colors.dart';
import 'package:flutter_application_1/provider/item_provider.dart';
import 'package:provider/provider.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
          color: ConstColors.violetPurple,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(color: ConstColors.constWhite, width: 3),
        ),
        child: Consumer<ItemProvider>(
          builder: (context, state, child) {
            return Center(
              child: Text(
                state.resultText,
                style: const TextStyle(
                  color: ConstColors.constWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            );
          },
        ));
  }
}
