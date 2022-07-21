import 'package:bloc01_timer/timer/bloc/timer_bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class WavesBackground extends StatelessWidget {
  const WavesBackground({Key? key}) : super(key: key);

  double getWaterLevelHeight(int seconds) {
    //max 80.h    min 0.h
    double levelheight = seconds / 60 * 80;

    //levelheight = levelheight > 80 ? 80 : levelheight;

    return levelheight;
  }

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final waterLevelHeight = getWaterLevelHeight(duration);

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            //Author: Finme
            //https://flare.rive.app/a/finme/files/flare/water-adjust/preview
            child: FlareActor(
              'assets/flares/water_adjust.flr',
              animation: 'Wave',
              color: Colors.blue.shade200,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(
            height: waterLevelHeight.h,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade200,
                    Colors.blue.shade600,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade50,
                  Colors.blue.shade500,
                ],
              ),
            ),
          )

 */