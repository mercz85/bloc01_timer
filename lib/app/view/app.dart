// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore: unused_import
import 'package:bloc01_timer/counter/counter.dart';
import 'package:bloc01_timer/l10n/l10n.dart';
import 'package:bloc01_timer/timer/view/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Timer',
          theme: ThemeData(
            primaryColor: Color.fromRGBO(109, 234, 255, 1),
            colorScheme: ColorScheme.light(
              secondary: Color.fromRGBO(72, 74, 126, 1),
            ),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: const TimerPage(),
        );
      },
    );
  }
}
