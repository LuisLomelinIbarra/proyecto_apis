import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class ChartSampleGallery extends StatefulWidget {
  @override
  _ChartSampleGalleryState createState() => _ChartSampleGalleryState();
}

class _ChartSampleGalleryState extends State<ChartSampleGallery> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<ChartData> chartData = [
    ChartData('Mindfulness', 10, '70%'),
    ChartData('Zen', 11, '60%'),
    ChartData('Vipassana', 9, '52%'),
    ChartData('Trascendental', 10, '40%')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Estadisticas'),
        ),
        body: ListView(children: <Widget>[
          SizedBox(
            height: 400,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),

                // Chart title
                title: ChartTitle(text: 'Meditaciones por Mes'),

                // Enable legend
                legend: Legend(
                    isVisible: false,
                    title: LegendTitle(text: "No. Meditaciones")),

                // Enable tooltip
                tooltipBehavior: _tooltipBehavior,
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Ene', 35),
                        SalesData('Feb', 28),
                        SalesData('Mar', 34),
                        SalesData('Abr', 32),
                        SalesData('May', 40)
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales

                      // Enable data label
                      //dataLabelSettings: DataLabelSettings(isVisible: true)

                      )
                ]),
          ),
          SizedBox(
              height: 400,
              child: Container(
                  child: SfCircularChart(
                      // Chart title
                      title: ChartTitle(text: 'Desglosado de tipos'),
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                    PieSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        // Radius for each segment from data source
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                        enableTooltip: true,
                        pointRadiusMapper: (ChartData data, _) => data.size)
                  ])))
        ]));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, this.size);
  final String x;
  final double y;
  final String size;
}
