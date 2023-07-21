import 'package:flutter/material.dart';
import 'package:assignment10/landscape_view.dart';
import 'package:assignment10/portrait_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: OrientationBuilder(builder: (context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return const LandScapeView();
        }
        return const PortraitView();
      }),
    );
  }
}