import 'package:flutter/material.dart';

import '../../constants.dart';

class BatteryStatus extends StatelessWidget {
  const BatteryStatus({
    Key? key,
    required this.constrains,
  }) : super(key: key);

  final BoxConstraints constrains;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "450 mile",
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          "75%",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Text(
          "Charging".toUpperCase(),
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "15 min remaining",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: constrains.maxWidth * 0.14,
        ),
        DefaultTextStyle(
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("60 mile/hour"),
              Text("245 V"),
            ],
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
