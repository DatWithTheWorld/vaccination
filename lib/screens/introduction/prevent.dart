import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_intro.dart';

class Prevent extends StatelessWidget {
  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/check');
  }

  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => onPressed(context),
                  icon: Text('Next',
                      style: Theme.of(context).textTheme.bodyText2!.merge(
                            TextStyle(color: colorScheme.primary),
                          )),
                ),
              ],
            ),
            const Header()
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/image/prevent.png'),
              width: 350,
              height: 350,
              fit: BoxFit.contain,
            ),
            TextIntro(
              text1: 'Prevent ',
              text2: 'COVID-19',
              text3: ' and help',
              text4: 'end the pandemic',
              text5: 'Protect yourself and others around you by',
              text6: 'taking the ',
              text7: 'COVID-19 ',
              text8: 'vaccine today..',
            ),
            const SizedBox(height: 60),
            ButtonBlue(
              horizontal: 250.0,
              vertical: 48.0,
              text: 'Get Started',
              buttonFunction: () => onLogin(context),
              colorbg: colorScheme.primary,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
