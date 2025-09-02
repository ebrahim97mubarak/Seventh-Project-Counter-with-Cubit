// ignore_for_file: file_names

import 'package:eleventh/Cubits/CounterCubit/counterBlock.dart';
import 'package:eleventh/Public/publicEnums.dart';
import 'package:eleventh/Public/publicVar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.textButton,
    required this.pointNumber,
    required this.nameOfTeam,
  });
  final String textButton;
  final int? pointNumber;
  final Teams? nameOfTeam;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(PublicVar.kColor),
            fixedSize: MaterialStatePropertyAll(
              Size(
                130 / 866.2857142857143 * PublicVar.highDevice,
                50 / 411.42857142857144 * PublicVar.widthDevice,
              ),
            ),
          ),
          onPressed: () {
            BlocProvider.of<CounterBlock>(context).Counter(increasePoint: pointNumber,nameOfTeam: nameOfTeam);
            /*if (pointNumber == 0) {
              //PublicVar.pointA = 0;
              //PublicVar.pointB = 0;
            } else if (nameOfTeam == true) {
              //PublicVar.pointA += pointNumber;
            } else {
              //PublicVar.pointB += pointNumber;
            }*/
          },
          child: SizedBox(
            width: 100 / 411.42857142857144 * PublicVar.widthDevice,
            height: 20 / 866.2857142857143 * PublicVar.highDevice,
            child: FittedBox(
              child: Text(
                textButton,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20 / 866.2857142857143 * PublicVar.highDevice,
        )
      ],
    );
  }
}
