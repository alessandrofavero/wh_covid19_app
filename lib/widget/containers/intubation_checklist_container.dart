import 'package:flutter/material.dart';

import '../../models/IntubationChecklist.dart';
import '../../style.dart';
import '../lists/intubation_checklist_item.dart';

class IntubationChecklistContainer extends StatelessWidget {
  final List<IntubationChecklistItem> checklist;

  const IntubationChecklistContainer({this.checklist});

  List<Widget> renderList() {
    return checklist
        .map((e) => IntubationChecklistItemWidget(
              listItem: e,
              backgroundColor: AppColors.appBackground,
              selectedBackgroundColor: AppColors.green50,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.green500,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ListView(
            children: [
              Container(padding: const EdgeInsetsDirectional.only(top: 10)),
              ...renderList(),
              Container(padding: const EdgeInsetsDirectional.only(bottom: 10)),
            ],
          ),
        ));
  }
}
