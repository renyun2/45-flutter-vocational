import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class ScoresPage extends ConsumerWidget {
  const ScoresPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('成绩趋势')),
      body: FutureBuilder<List<ScoreRecord>>(
        future: ref.read(vocationalRepositoryProvider).fetchScores(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final scores = snap.data ?? [];
          if (scores.isEmpty) {
            return const Center(child: Text('暂无模考成绩'));
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SizedBox(
                height: 220,
                child: LineChart(
                  LineChartData(
                    minY: 0,
                    maxY: 100,
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 28,
                          getTitlesWidget: (v, _) {
                            final i = v.toInt();
                            if (i < 0 || i >= scores.length) return const SizedBox.shrink();
                            final d = DateTime.tryParse(scores[i].submittedAt);
                            return Text(d != null ? DateFormat('MM/dd').format(d) : '${i + 1}');
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: true, reservedSize: 32),
                      ),
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                    gridData: const FlGridData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          for (var i = 0; i < scores.length; i++)
                            FlSpot(i.toDouble(), scores[i].score),
                        ],
                        isCurved: true,
                        dotData: const FlDotData(show: true),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ...scores.reversed.map((s) => ListTile(
                    title: Text(s.examTitle),
                    subtitle: Text(s.submittedAt),
                    trailing: Text(
                      '${s.score.toStringAsFixed(0)} 分',
                      style: TextStyle(color: s.passed ? Colors.green : Colors.red),
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
