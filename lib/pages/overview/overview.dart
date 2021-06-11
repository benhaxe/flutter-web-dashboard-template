import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverviewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          if(ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context))
          if(ResponsiveWidget.isCustomSize(context))
          OverviewCardsMediumScreen()
          else
          OverviewCardsLargeScreen()
          else
          OverviewCardsSmallScreen(),

          Expanded(child: Container()),
          Text(MediaQuery.of(context).size.width.toString(),
              style: TextStyle(fontSize: 39))
        ],
      ),
    );
  }
}
