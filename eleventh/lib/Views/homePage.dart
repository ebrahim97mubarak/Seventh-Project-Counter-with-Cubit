// ignore_for_file: file_names, must_be_immutable

import 'package:eleventh/Cubits/CounterCubit/counterBlock.dart';
import 'package:eleventh/Cubits/CounterCubit/counterState.dart';
import 'package:eleventh/Public/publicEnums.dart';
import 'package:eleventh/Public/publicVar.dart';
import 'package:eleventh/Widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 24 / 866.2857142857143 * PublicVar.highDevice,
          width: 145 / 411.42857142857144 * PublicVar.widthDevice,
          child: const FittedBox(
            child: Text('Pointes Counter'),
          ),
        ),
        backgroundColor: PublicVar.kColor,
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => CounterBlock(),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 120 / 411.42857142857144 * PublicVar.widthDevice,
                        height: 40 / 866.2857142857143 * PublicVar.highDevice,
                        child: const FittedBox(
                          child: Text(
                            'Team A',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150 / 411.42857142857144 * PublicVar.widthDevice,
                        height: 300 / 866.2857142857143 * PublicVar.highDevice,
                        child: FittedBox(
                          child: BlocBuilder<CounterBlock, CounterState>(
                            builder: (context, state) {
                              return Text(
                                BlocProvider.of<CounterBlock>(context)
                                    .pointTeamA
                                    .toString(),
                              );
                            },
                          ),
                        ),
                      ),
                      const ButtonWidget(
                          textButton: 'Add 1 Point',
                          nameOfTeam: Teams.TeamA,
                          pointNumber: 1),
                      const ButtonWidget(
                          textButton: 'Add 2 Point',
                          nameOfTeam: Teams.TeamA,
                          pointNumber: 2),
                      const ButtonWidget(
                          textButton: 'Add 3 Point',
                          nameOfTeam: Teams.TeamA,
                          pointNumber: 3),
                    ],
                  ),
                  SizedBox(
                    height: 530 / 866.2857142857143 * PublicVar.highDevice,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 120 / 411.42857142857144 * PublicVar.widthDevice,
                        height: 40 / 866.2857142857143 * PublicVar.highDevice,
                        child: const FittedBox(
                          child: Text(
                            'Team B',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150 / 411.42857142857144 * PublicVar.widthDevice,
                        height: 300 / 866.2857142857143 * PublicVar.highDevice,
                        child: FittedBox(
                          child: BlocBuilder<CounterBlock, CounterState>(
                            builder: (context, state) {
                              return Text(
                                BlocProvider.of<CounterBlock>(context)
                                    .pointTeamB
                                    .toString(),
                              );
                            },
                          ),
                        ),
                      ),
                      const ButtonWidget(
                          textButton: 'Add 1 Point',
                          nameOfTeam: Teams.TeamB,
                          pointNumber: 1),
                      const ButtonWidget(
                          textButton: 'Add 2 Point',
                          nameOfTeam: Teams.TeamB,
                          pointNumber: 2),
                      const ButtonWidget(
                          textButton: 'Add 3 Point',
                          nameOfTeam: Teams.TeamB,
                          pointNumber: 3),
                    ],
                  ),
                ],
              ),
              const Spacer(flex: 2),
              const ButtonWidget(
                  textButton: 'Reset', nameOfTeam: null, pointNumber: null),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
