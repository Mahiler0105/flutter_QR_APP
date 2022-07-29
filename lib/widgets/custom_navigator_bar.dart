import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
      elevation: 0,
      onTap: (int key) => uiProvider.selectedMenuOpt = key,
      currentIndex: uiProvider.selectedMenuOpt,
      items: const [
        BottomNavigationBarItem(
          label: 'Mapa',
          icon: Icon(Icons.map),
        ),
        BottomNavigationBarItem(
          label: 'Direcciones',
          icon: Icon(Icons.compass_calibration),
        ),
      ],
    );
  }
}
