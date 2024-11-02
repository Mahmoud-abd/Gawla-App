import 'package:flutter/material.dart';
import 'package:gawla/utils/colors.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: myYellow,
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: myWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
