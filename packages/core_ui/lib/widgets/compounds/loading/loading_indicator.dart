import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {

  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
            width: 50,
            height: 50,
            child: LoadingIndicator(
              indicatorType: Indicator.lineScalePulseOut,
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
            )
        )
    );
  }

}