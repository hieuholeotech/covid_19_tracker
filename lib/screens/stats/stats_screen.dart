import 'package:covid_19/screens/home/components/stats_card.dart';
import 'package:covid_19/screens/stats/components/list_stats.dart';
import 'package:covid_19/screens/stats/components/stats_with_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Newest Covid-19 Stats",
          style: TextStyle(fontSize: 16),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StatsCard(),
            StatsSearch(),
            ListStats(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
