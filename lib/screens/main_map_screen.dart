import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/screens/wms_screen.dart';

class MainMapScreen extends StatelessWidget {
  const MainMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(30.0444, 31.2357),
          initialZoom: 6,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WmsScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.layers_outlined,
                size: 50,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
