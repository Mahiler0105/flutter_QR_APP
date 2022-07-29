import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/providers/ui_provider.dart';
import 'package:flutter_qr_scanner/screens/directions_screen.dart';
import 'package:flutter_qr_scanner/screens/maps_screen.dart';
import 'package:flutter_qr_scanner/widgets/custom_navigator_bar.dart';
import 'package:flutter_qr_scanner/widgets/scan_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Historial'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete_forever),
            ),
          ],
        ),
        body: const _HomeScreenBody(),
        bottomNavigationBar: const CustomNavigatorBar(),
        floatingActionButton: const ScanButton(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    switch (uiProvider.selectedMenuOpt) {
      case 0:
        return const MapsScreen();
      case 1:
        return const DirectionsScreen();
      default:
        return const MapsScreen();
    }
  }
}
