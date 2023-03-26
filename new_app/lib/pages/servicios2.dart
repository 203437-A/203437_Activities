import 'package:flutter/material.dart';
import 'package:login/pages/servicio.dart';

class Servicios2 extends StatelessWidget {
  const Servicios2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: fetchAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // Por defecto, muestra un spinner de carga.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}