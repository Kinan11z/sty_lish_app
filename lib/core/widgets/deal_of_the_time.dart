import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class DealOfTheTime extends StatefulWidget {
  const DealOfTheTime({super.key});

  @override
  _DealButtonState createState() => _DealButtonState();
}

class _DealButtonState extends State<DealOfTheTime> {
  Duration duration = const Duration(hours: 22, minutes: 55, seconds: 20);
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
        const Duration(seconds: 1),
        (_) => setState(() {
              if (duration.inSeconds > 0) {
                duration -= const Duration(seconds: 1);
              } else {
                timer?.cancel();
              }
            }));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Deal of the Day',
                style: AppStyles.styleBold16(context),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.timer_sharp,
                    size: 16,
                    color: AppColors.white,
                  ),
                  Text(
                    '  ${duration.inHours}h ${duration.inMinutes % 60}m ${duration.inSeconds % 60}s remaining',
                    style: AppStyles.styleBold12(context),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.white)),
              child: Row(
                children: [
                  Text(
                    'View all',
                    style: AppStyles.styleBold12(context),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: AppColors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
