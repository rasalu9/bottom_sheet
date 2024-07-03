import 'package:flutter/material.dart';

class Bottom2 extends StatefulWidget {
  const Bottom2({super.key});

  @override
  State<Bottom2> createState() => _Bottom2State();
}

class _Bottom2State extends State<Bottom2> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: _currentRangeValues,
          max: 100,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(_currentRangeValues);
            },
            child: Text("Submit")),
      ],
    );
  }
}
