import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../hard_data.dart';
import '../../../routes.dart';
import '../../../style.dart';
import '../../view_templates/intubation_content_view_template.dart';
import '../../view_templates/tab_view_template.dart';

class ExtubationGuidancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabViewTemplate(
      'Extubation Guide',
      tabs: extubationGuide.map((e) => e.name).toList(),
      color: AppColors.green50,
      indicatorColor: AppColors.green900,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/images/icon/SVG/icon_infographic.svg',
          ),
          onPressed: () => Navigator.pushNamed(
              context, Routes.extubationGuidanceInfographic),
        )
      ],
      children: extubationGuide
          .map((e) => IntubationContentViewTemplate(content: e))
          .toList(),
    );
  }
}
