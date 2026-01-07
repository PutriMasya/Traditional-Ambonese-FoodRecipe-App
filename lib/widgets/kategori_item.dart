import 'package:flutter/material.dart';

class KategoriItem extends StatelessWidget {
  final String kategori;
  final IconData icon;
  final VoidCallback? onTap;

  const KategoriItem(this.kategori, {required this.icon, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 24),
              const SizedBox(width: 8),
              Text(
                kategori,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
