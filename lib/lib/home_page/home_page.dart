import 'package:flutter/material.dart';
import 'package:portfolio/lib/layouts/desktop_layout.dart';
import 'package:portfolio/lib/layouts/mobile_layout.dart';
import 'package:portfolio/lib/layouts/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 480) {
            // Mobile layout
            return const MobileLayout();
          } else if (constraints.maxWidth < 800) {
            // Tablet layout
            return const TabletLayout();
          } else {
            // Desktop layout
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}

