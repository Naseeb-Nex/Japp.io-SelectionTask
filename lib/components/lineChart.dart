import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:japp_io_st/constants/colors.dart';

class LineChartwidget extends StatefulWidget {
  const LineChartwidget({super.key});

  @override
  State<LineChartwidget> createState() => _LineChartwidgetState();
}

class _LineChartwidgetState extends State<LineChartwidget> {
  List<Color> gradientColors = [
    pcolor,
    pcolor,
  ];

  @override
  Widget build(BuildContext context) {
    // adpative size
    Size s = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: EdgeInsets.only(
              left: s.width * 0.06,
              right: s.width * 0.03,
            ),
            // chart widget
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }
  
  // Bottom chart titles
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontFamily: "Nuntino",
      fontWeight: FontWeight.w400,
      color: Color(0XFF538784),
      fontSize: 15,
    );
    Widget text;
    // tittle value selections
    switch (value.toInt()) {
      case 1:
        text = const Text('Mar', style: style);
        break;
      case 2:
        text = const Text('Apr', style: style);
        break;
      case 3:
        text = const Text('May', style: style);
        break;
      case 4:
        text = const Text('Jun', style: style);
        break;
      case 5:
        text = const Text('Jul', style: style);
        break;
      case 6:
        text = const Text('Aug', style: style);
        break;
      case 7:
        text = const Text('Sep', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    // Return SideTitle 
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  LineChartData mainData() {
    return LineChartData(
      // grid on the backround
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        // right Titles disabled
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        // Top title disabled
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        // bottom titles
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        // left titles disabled
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      // border Disabled
      borderData: FlBorderData(
        show: false,
      ),
      minX: 1,
      // maxX: 12,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        // line cart spots
        LineChartBarData(
          spots: const [
            FlSpot(1, 0),
            FlSpot(1.02, 0.1),
            FlSpot(1.4, 1.8),
            FlSpot(2.2, 1.5),
            FlSpot(3, 2.8),
            FlSpot(3.4, 2.6),
            FlSpot(4.9, 3.8),
            FlSpot(6, 1.6),
            FlSpot(7, 1.9),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          // below potions of line chart
          belowBarData: BarAreaData(
            show: true,
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0XFFD7E3E3),
                  Color(0XFFDFE9E8),
                  Color(0XFFE8EFEF),
                  Color(0XFFEFF4F3),
                  Color(0XFFEDF3F2),
                  Color(0XFFEFF4F4),
                  Color(0XFFFBFCFC),
                  white,
                ]),
          ),
        ),
      ],
      // line Touch events
      lineTouchData: LineTouchData(
        // customized Dot and dashed line
        getTouchedSpotIndicator:
            (LineChartBarData barData, List<int> indicators) {
          return indicators.map(
            (int index) {
              final line = FlLine(
                  color: const Color(0XFF949595),
                  strokeWidth: 1.5,
                  dashArray: [6, 5]);
              return TouchedSpotIndicatorData(
                line,
                FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) =>
                      FlDotCirclePainter(
                    radius: 8,
                    color: pcolor,
                    strokeWidth: 6,
                    strokeColor: pcolor.withOpacity(0.1),
                  ),
                ),
              );
            },
          ).toList();
        },
        // Tool tip customization
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: tooltipbg,
          tooltipRoundedRadius: 8,
          tooltipBorder: const BorderSide(width: 2, color: tooltipborder),
          getTooltipItems: ((List<LineBarSpot> line) {
            // passing each data to each tooltip
            return line.map((LineBarSpot data) {
              // tooltip data modified that what to display
              // fetch the data as a String
              String tipsvalue = data.y.toString();
              // Connvert the data double and multiply with the scale
              double tipdvalue = double.parse(tipsvalue) * 100;
              // Convert back to integer to display the value as a String
              int tipvalue = tipdvalue.toInt();
              // Adding $ to Start
              String tooltipdata = "\$ $tipvalue";
              return LineTooltipItem(
                tooltipdata,
                const TextStyle(
                  fontFamily: "Nunito",
                  color: pcolor,
                  fontWeight: FontWeight.w600,
                ),
              );
            }).toList();
          }),
        ),
      ),
    );
  }
}
