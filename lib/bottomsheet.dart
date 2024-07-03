import 'package:bottom_sheet/bottom2.dart';
import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  RangeValues _rangeRangeValues = const RangeValues(0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    
                      context: context,
                      builder: (context) {
                        return Bottom2();
                      }).then((value) {
                    _rangeRangeValues = value;
                    setState(() {});
                  });
                },
                child: Text("Select range")),
                
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                    "range${_rangeRangeValues.start}--${_rangeRangeValues.end}"),
              ),
            )
          ],
        ));
  }
}
