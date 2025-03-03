import 'dart:io';

import 'package:flutter/material.dart';
import 'package:paint_codex/bootstrap.dart';
import 'package:window_size/window_size.dart';

import 'design_system/templates/page.dart';
import 'paint_collection/overview/paint_collection_overview.dart';

Future<void> main() async {
  if (Platform.isMacOS) {
    WidgetsFlutterBinding.ensureInitialized();

    final window = await getWindowInfo();
    setWindowFrame(Rect.fromCenter(center: window.frame.center, width: 428, height: 926));
  }

  runApp(
    await bootstrap(
      child: PaintCodexApp(),
    ),
  );
}

class PaintCodexApp extends StatefulWidget {
  const PaintCodexApp({super.key});

  @override
  State<PaintCodexApp> createState() => _PaintCodexAppState();
}

class _PaintCodexAppState extends State<PaintCodexApp> {
  var _pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paint Codex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 25,26,37),
          surface: Color.fromARGB(255, 16, 16, 20),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              label: "Schemes",
              icon: Icon(Icons.pie_chart_outline),
            ),
            NavigationDestination(
              label: "Paints",
              icon: Icon(Icons.book_outlined),
            ),
            NavigationDestination(
              label: "About",
              icon: Icon(Icons.info_outline),
            ),
          ],
          selectedIndex: _pageIndex,
          onDestinationSelected: (index) => setState(() => _pageIndex = index),
        ),
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 100),
          child: switch (_pageIndex) {
            0 => PageTemplate(
              title: 'Schemes',
              slivers: [],
            ),
            1 => PaintCollectionOverview(),
            2 => PageTemplate(
                title: 'About',
                slivers: [],
              ),
            _ => throw UnimplementedError(),
          },
        ),
      ),
    );
  }
}
