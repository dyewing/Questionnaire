import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ResultScreen extends StatefulWidget {
  static const String id = 'result_screen';
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TEGエゴグラムデータ'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'CP:8',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
              Text(
                'NP:10 ',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
              Text(
                'A:14 ',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
              Text(
                'FC:15 ',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
              Text(
                'AC:13 ',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
              Text(
                'L:10 ',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey),
              ),
            ],
          ),
          Container(
            height: 450.0,
            child: AspectRatio(
              aspectRatio: 1.7,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: Colors.white,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: false,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.transparent,
                        tooltipPadding: const EdgeInsets.all(0),
                        tooltipBottomMargin: 8.0,
                        getTooltipItem: (
                          BarChartGroupData group,
                          int groupIndex,
                          BarChartRodData rod,
                          int rodIndex,
                        ) {
                          return BarTooltipItem(
                            rod.y.round().toString(),
                            TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        textStyle: TextStyle(
                            color: const Color(0xff7589a2),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                        margin: 10.0,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'CP';
                            case 1:
                              return 'NP';
                            case 2:
                              return 'A';
                            case 3:
                              return 'FC';
                            case 4:
                              return 'AC';
                            case 5:
                              return 'L';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(showTitles: false),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: [
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(y: 8, color: Colors.lightBlueAccent)
                      ], showingTooltipIndicators: [
                        0
                      ]),
                      BarChartGroupData(x: 1, barRods: [
                        BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                      ], showingTooltipIndicators: [
                        0
                      ]),
                      BarChartGroupData(x: 2, barRods: [
                        BarChartRodData(y: 14, color: Colors.lightBlueAccent)
                      ], showingTooltipIndicators: [
                        0
                      ]),
                      BarChartGroupData(x: 3, barRods: [
                        BarChartRodData(y: 15, color: Colors.lightBlueAccent)
                      ], showingTooltipIndicators: [
                        0
                      ]),
                      BarChartGroupData(x: 4, barRods: [
                        BarChartRodData(y: 13, color: Colors.lightBlueAccent)
                      ], showingTooltipIndicators: [
                        0
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Text(
              '「備考」',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'L = ',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Q (53の質問事項の内どちらでもないと答えた数の合計)= ',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey),
            ),
          ),
        ]),
      ),
    );
  }
}
