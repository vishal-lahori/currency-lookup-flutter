import 'package:currency_lookup/provider/dashboard_provider.dart';
import 'package:currency_lookup/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DashboardProvider>(
            create: (_) => DashboardProvider()),
      ],
      child: MaterialApp(
        title: 'Currency Look up',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Dashboard(),
      ),
    );
  }
}
