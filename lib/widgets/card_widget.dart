import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/days_model.dart';

class ListCardWidgets extends StatelessWidget {
  final bool isMin;
  const ListCardWidgets({
    required this.isMin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: isMin
          ? BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(
                color: Colors.transparent,
                child: Row(
                  children: Days.allDays
                      .map((day) => CardWidget(
                          isMin: isMin,
                          isOrange: day.isOrange,
                          isBlue: day.isBlue,
                          isToday: day.isToday,
                          day: day.day,
                          month: day.month,
                          number: day.number))
                      .toList(),
                ),
              ),
            )
          : Container(
              color: Colors.white,
              child: Row(
                children: Days.allDays
                    .map((day) => CardWidget(
                        isMin: isMin,
                        isOrange: day.isOrange,
                        isBlue: day.isBlue,
                        isToday: day.isToday,
                        day: day.day,
                        month: day.month,
                        number: day.number))
                    .toList(),
              ),
            ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final bool isMin;
  final bool isOrange;
  final bool isBlue;
  final bool isToday;
  final String day;
  final String month;
  final String number;
  const CardWidget({
    required this.isMin,
    required this.isOrange,
    required this.isBlue,
    required this.isToday,
    required this.day,
    required this.month,
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: isMin
            ? 75
            : isBlue
                ? 80
                : isOrange
                    ? 80
                    : 80,
        height: isMin
            ? 70
            : isBlue
                ? 100
                : isOrange
                    ? 140
                    : 80,
        child: Card(
          color: Colors.black,
          child: Column(
            children: [
              isMin
                  ? const Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                    )
                  : isToday
                      ? const Padding(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 12),
                          ),
                        )
                      : const Padding(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                        ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isMin && isToday
                        ? const Text(
                            'Today ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 10),
                          )
                        : Container(),
                    Text(
                      day,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              isMin
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(top: 1, bottom: 1),
                      child: Text(
                        month,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
              isMin
                  ? (isBlue
                      ? (Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/DotBlue.svg'),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              number + ' ' + month,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ],
                        ))
                      : isOrange
                          ? (Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/DotRed.svg'),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  number + ' ' + month,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ))
                          : Text(
                              number + ' ' + month,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ))
                  : Flexible(
                      child: Text(
                        number,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
              const SizedBox(
                height: 5,
              ),
              isMin
                  ? Container()
                  : isBlue
                      ? Flexible(
                          child: SvgPicture.asset('assets/images/DotBlue.svg'))
                      : Flexible(
                          child: isOrange
                              ? SvgPicture.asset('assets/images/DotRed.svg')
                              : Container(),
                        )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
