import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:slaega_employee_admin/config/responsive.dart';
import 'package:slaega_employee_admin/style/colors.dart';


class BarChartCopmponent extends StatelessWidget {
  const BarChartCopmponent({super.key, 
 
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
  BarChartData(
    borderData: FlBorderData(show: false) ,
    alignment: BarChartAlignment.spaceBetween,
    gridData: const FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
   
    barGroups: [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(fromY: 10, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0),
        ]
      ),
      BarChartGroupData(
        x: 1,
         barRods: [
          BarChartRodData(fromY: 50, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(toY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 2,
         barRods: [
          BarChartRodData(fromY: 30, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(toY: 90, show: true, color: AppColors.barBg),toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 3,
         barRods: [
          BarChartRodData(fromY: 80, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(toY: 90, show: true, color: AppColors.barBg),toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 4,
         barRods: [
          BarChartRodData(fromY: 70, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(toY: 90, show: true, color: AppColors.barBg),toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 5,
         barRods: [
          BarChartRodData(fromY: 20, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg),toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 6,
         barRods: [
          BarChartRodData(toY: 90, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg))
        ]
      ),
      BarChartGroupData(
        x: 7,
         barRods: [
          BarChartRodData(fromY: 60, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 8,
         barRods: [
          BarChartRodData(fromY: 90, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
       BarChartGroupData(
        x: 9,
         barRods: [
          BarChartRodData(fromY: 10, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
       BarChartGroupData(
        x: 10,
         barRods: [
          BarChartRodData(fromY: 40, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
      BarChartGroupData(
        x: 11,
         barRods: [
          BarChartRodData(fromY: 80, color: Colors.black, borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 40 : 10, backDrawRodData: BackgroundBarChartRodData(fromY: 90, show: true, color: AppColors.barBg), toY: 0)
        ]
      ),
    ]
    
  ),
  swapAnimationDuration: Duration(milliseconds: 150), // Optional
  swapAnimationCurve: Curves.linear, // Optional
);
  }
}