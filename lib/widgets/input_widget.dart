// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/const_colors.dart';
import 'package:flutter_application_1/constants/const_text.dart';
import 'package:flutter_application_1/model/item_model.dart';
import 'package:flutter_application_1/provider/item_provider.dart';
import 'package:provider/provider.dart';

class InputWidget extends StatelessWidget {
  InputWidget({Key? key}) : super(key: key);

  TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context, listen: false);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: TextField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ConstColors.constWhite, width: 3),
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ConstColors.violetPurple, width: 3),
              ),
            ),
            controller: itemController,
          ),
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (itemController.text == "" ||
                        itemController.text.characters.isEmpty) {
                    } else {
                      Item item = Item(title: itemController.text);
                      itemProvider.addDecisions(item);
                      itemController.text = "";
                    }
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(ConstColors.violetPurple),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(10),
                    ),
                  ),
                  child: ConstText.addItem,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    itemProvider.degiskenFunc();
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(ConstColors.violetPurple),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(10),
                    ),
                  ),
                  child: ConstText.startDecision,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
