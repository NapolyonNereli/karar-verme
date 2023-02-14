import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/const_colors.dart';
import 'package:flutter_application_1/constants/const_icon.dart';
import 'package:flutter_application_1/provider/item_provider.dart';
import 'package:provider/provider.dart';

class ViewItems extends StatelessWidget {
  const ViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: Consumer<ItemProvider>(
          builder: (context, state, child) {
            return ListView.builder(
              itemCount: state.decisions.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: ConstColors.eveningMauve,
                        border:
                            Border.all(width: 3, color: ConstColors.constWhite),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      trailing: IconButton(
                          icon: ConstIcon.deleteIcon,
                          onPressed: () {
                            state.deleteDecisions(state.decisions[index]);
                          }),
                      title: Text(
                        state.decisions[index].title,
                        style: const TextStyle(color: ConstColors.constWhite),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
