import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profil Kota Ambon',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), // Memberikan sudut melengkung
                child: Image.asset(
                  'assets/images/kota_ambon.jpg',
                  width: 180, // Mengubah ukuran gambar menjadi lebih besar
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Kota Ambon, yang dikenal sebagai Ambon Manise, adalah ibu kota Provinsi Maluku. Terkenal dengan keindahan alamnya yang luar biasa, pantai-pantai yang indah, serta kekayaan budaya dan sejarah yang kaya. Kota ini juga merupakan pusat perdagangan dan pendidikan di Maluku.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Makanan Khas Ambon',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Colors.orangeAccent, Colors.deepOrange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Masakan Ambon sangat kaya dan beragam, dikenal dengan penggunaan rempah-rempah dan bahan-bahan segar. Hidangan lokal sering kali menampilkan makanan laut, sagu, dan berbagai buah tropis. Beberapa hidangan yang sering ditemui termasuk:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  _buildDishCard(
                    'Ikan Bakar Colo-Colo',
                    'assets/images/ikan_bakar_colo_colo.jpg',
                    'Hidangan ikan bakar populer yang disajikan dengan saus colo-colo pedas.',
                  ),
                  const SizedBox(height: 8.0),
                  _buildDishCard(
                    'Papeda',
                    'assets/images/papeda.jpeg',
                    'Sagu tradisional yang biasanya dimakan dengan berbagai hidangan ikan.',
                  ),
                  const SizedBox(height: 8.0),
                  _buildDishCard(
                    'Roti Kering Kenari',
                    'assets/images/roti_kering_kenari.jpg',
                    'Roti manis yang dibuat dengan kacang kenari lokal, menawarkan rasa yang unik.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDishCard(String title, String imagePath, String description) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
