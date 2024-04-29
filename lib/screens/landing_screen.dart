import 'package:flutter/material.dart';
import 'package:news_app_new/utils/app_styels.dart';

import '../generated/assets.dart';
import '../widgets/started_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    Assets.imagesLanding,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 1.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'News from around the\n       world for you ',
                style: AppStyles.styleBold30(context),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Best time to read , take your time to read\n        a little more of this world',
                style: AppStyles.styleSemiBold18(context)
                    .copyWith(),
              ),
              const SizedBox(
                height: 40,
              ),
              const StartedButton()
            ],
          ),
        ),
      ),
    );
  }
}

