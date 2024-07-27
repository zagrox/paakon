// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({
    super.key,
    this.width,
    this.height,
    required this.chartData,
    this.chartTitle,
  });

  final double? width;
  final double? height;
  final List<ChartDataStruct> chartData;
  final String? chartTitle;

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
            title: ChartTitle(text: widget.chartTitle ?? ''),
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 100, interval: 5),
            tooltipBehavior: TooltipBehavior(enable: true),
            enableSideBySideSeriesPlacement: false,
            series: <CartesianSeries<ChartDataStruct, String>>[
          ColumnSeries<ChartDataStruct, String>(
              dataSource: widget.chartData,
              xValueMapper: (ChartDataStruct data, _) => data.xTitle,
              yValueMapper: (ChartDataStruct data, _) => data.yValue1,
              name: 'Clean',
              color: Color.fromARGB(255, 6, 221, 200)),
          ColumnSeries<ChartDataStruct, String>(
              dataSource: widget.chartData,
              xValueMapper: (ChartDataStruct data, _) => data.xTitle,
              yValueMapper: (ChartDataStruct data, _) => data.yValue2,
              name: 'Invalid',
              color: Color.fromARGB(255, 215, 36, 36)),
        ]));
  }
}
