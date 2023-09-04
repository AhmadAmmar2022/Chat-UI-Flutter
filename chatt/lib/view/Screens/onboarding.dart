import 'package:chatt/controller/onboarding_controller.dart';
import 'package:chatt/core/constant/color.dart';
import 'package:chatt/view/customwidget/onboarding/custombutton.dart';
import 'package:chatt/view/customwidget/onboarding/customslider.dart';
import 'package:chatt/view/customwidget/onboarding/dotcontroller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
