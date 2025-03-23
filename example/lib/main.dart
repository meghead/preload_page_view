import 'package:example/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:preload_page_view/preload_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PreloadPageView Demo',
      home: PreloadPageViewDemo(),
    );
  }
}

class PreloadPageViewDemo extends StatefulWidget {
  const PreloadPageViewDemo({super.key});

  @override
  _PreloadPageViewState createState() => _PreloadPageViewState();
}

class _PreloadPageViewState extends State<PreloadPageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PreloadPageView Demo"),
      ),
      body: Container(
        child: PreloadPageView.builder(
          preloadPagesCount: 5,
          itemBuilder: (BuildContext context, int position) => DemoPage(position),
          controller: PreloadPageController(initialPage: 1),
          onPageChanged: (int position) {
            print('page changed. current: $position');
          },
        ),
      ),
    );
  }
}
