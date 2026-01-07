import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'kategori_screen.dart';

class KategoriMasakanScreen extends StatelessWidget {
  const KategoriMasakanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori Masakan', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          buildKategoriTile(context, 'Olahan Nasi', Icons.rice_bowl),
          buildKategoriTile(context, 'Olahan Ikan', FontAwesomeIcons.fish),
          buildKategoriTile(context, 'Olahan Sagu', FontAwesomeIcons.utensils),
          buildKategoriTile(context, 'Camilan Khas', Icons.fastfood),
        ],
      ),
    );
  }

  Widget buildKategoriTile(BuildContext context, String kategori, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, size: 40.0, color: Colors.purple),
        title: Text(
          kategori,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => KategoriScreen(kategori: kategori),
            ),
          );
        },
      ),
    );
  }
}
