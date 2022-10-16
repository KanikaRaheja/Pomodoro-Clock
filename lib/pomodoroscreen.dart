import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/timerservice.dart';
import 'package:stopwatch/utils.dart';
import 'package:stopwatch/widgets/progresswidget.dart';
import 'package:stopwatch/widgets/timeoptions.dart';
import 'utils.dart';
import 'widgets/timercard.dart';
import 'widgets/timecontroller.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
        backgroundColor: renderColor(provider.currentState),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: renderColor(provider.currentState),
            title: Text(
              "POMOTIMER",
              style: textStyle(25, Colors.white, FontWeight.w700),
            ),
            actions: [
              IconButton(
                onPressed: () =>Provider.of<TimerService>(context,listen:false).reset(),
                
                icon: Icon(Icons.refresh, color: Colors.white),
                iconSize: 40,
              )
            ]),
        body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  TimerCard(),
                  SizedBox(
                    height: 40,
                  ),
                  TimeOptions(),
                  SizedBox(height: 30),
                  TimeController(),
                  SizedBox(height: 30),
                  ProgressWidget(),
                ],
              )),
        ));
  }
}
