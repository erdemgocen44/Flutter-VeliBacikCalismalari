import 'package:flutter/material.dart';

void main() => runApp(ScaffoldView());

class ScaffoldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppbarIconButton(
            "Air",
            Icon(
              Icons.electric_bike_sharp,
            ),
          ),
          AppbarIconButton(
            "BelAir",
            Icon(
              Icons.qr_code,
            ),
          ),
          AppbarIconButton(
            "Cull",
            Icon(Icons.add_a_photo),
          ),
        ],
        title: Text('Scaffold Çalışması'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  IconButton AppbarIconButton(String tool, Icon ikon) {
    return IconButton(
      onPressed: () {},
      tooltip: tool,
      icon: ikon,
    );
  }
}
