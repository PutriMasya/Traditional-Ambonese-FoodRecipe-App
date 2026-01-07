import 'package:flutter/material.dart';
import 'resep_detail_screen.dart';

class ResepListScreen extends StatelessWidget {
  ResepListScreen({super.key, required this.kategori});

  final String kategori;

  final Map<String, List<Map<String, dynamic>>> kategoriResep = {
    'Olahan Nasi': [
      {
        'nama': 'Nasi Bambu',
        'gambar': 'assets/images/nasi_bambu.jpg',
        'bahan': [
          '300 gr beras',
          '100 gr kelapa parut',
          '200 ml santan',
          'garam secukupnya'
        ],
        'cara': '1. Campur beras dengan kelapa parut dan santan.\n2. Masukkan dalam bambu, kukus hingga matang.\n3. Sajikan hangat.'
      },
      {
        'nama': 'Nasi Lapola',
        'gambar': 'assets/images/nasi_lapola.jpg',
        'bahan': [
          '300 gr beras',
          '100 gr kacang merah',
          '200 ml santan',
          'garam secukupnya'
        ],
        'cara': '1. Campur beras dengan kacang merah dan santan.\n2. Masak hingga matang.\n3. Sajikan hangat.'
      },
      {
        'nama': 'Nasi Kelapa',
        'gambar': 'assets/images/nasi_kelapa.jpeg',
        'bahan': [
          '300 gr beras',
          '100 gr kelapa parut',
          '200 ml santan',
          'garam secukupnya'
        ],
        'cara': '1. Campur beras dengan kelapa parut dan santan.\n2. Masak hingga matang.\n3. Sajikan hangat.'
      },
    ],
    'Olahan Ikan': [
      {
        'nama': 'Ikan Bakar Colo-Colo',
        'gambar': 'assets/images/ikan_bakar_colo_colo.jpg',
        'bahan': [
          '2 ekor ikan bakar',
          '12 cabe merah/hijau, iris kasar',
          '4 buah tomat, potong kecil-kecil',
          '8 siung bawang merah, iris kasar',
          'Mentega cair',
          '2 sdm air perasan jeruk nipis',
          '¼ sdt garam',
          '¼ sdt gula pasir',
          '2 sdm kecap',
          '50 ml air'
        ],
        'cara': '1. Bakar 2 ekor ikan, sisihkan. \n2. Campurkan cabe rawit, tomat, bawang merah, gula pasir, minyak, dan garam. \n3. Aduk sampai rata. \n4. Setelah merata, tambahkan air & perasan jeruk nipis dan aduk sampai rata. \n5. Tambahkan 2 sdm kecap manis. \n6. Sajikan sambal colo-colo di atas ikan bakar. \n7. Ikan Bakar Colo-colo Ala Ambon siap disantap bersama nasi putih hangat.'
      },
      {
        'nama': 'Ikan Asar',
        'gambar': 'assets/images/ikan_asar.jpeg',
        'bahan': [
          '1 Ekor Ikan Cakalang ukuran sedang atau besar'
        ],
        'cara': '1. Sebelum membersihkan ikan, persiapkan tempat pengasaran terlebih dahulu. Pengasaran dilakukan secara tradisional dengan menggunakan tempat perapian yang dibagian atasnya disusun bambu atau besi memanjang agar dapat menaruh ikan. Api yang dinyalakan jangan terlalu besar, karena yang dibutuhkan adalah asapnya. \n2. Ikan cakalang dibersihkan, buang bagian insang dan isi perut. \n3. Ikan dibelah membujur menjadi dua bagian dan dibersihkan dengan air bersih. \n4. Taruh bambu pada kedua sisi ikan secara vertikal dan diikat agar tidak jatuh. \n5. Taruh ikan di atas tempat bambu dan tunggu hingga matang. Ikan siap disajikan dengan colo-colo.'
      },
      {
        'nama': 'Ikan Kedondong',
        'gambar': 'assets/images/ikan_kedondong.jpeg',
        'bahan': [
          '250 gr ikan cakalang',
          '10 siung bawang merah', 
          '4 siung bawang putih',
          '10 gr daun kedondong',
          '10 buah cabe merah keriting',
          '5 bh cabe rawit merah',
          '2 ruas jahe',
          '2 ruas lengkuas',
          '2 batang sereh',
          '2 lembar daun salam',
          '4 lembar daun jeruk purut',
          '1/2 sendok teh ketumbar',
          '1/2 sendok teh jintan',
          'garam secukupnya',
        ],
        'cara': '1. Potong ikan berbentuk dadu.\n2. Haluskan semua bumbu.\n3. Tumis bumbu dengan sedikit minyak sampai harum.\n4. Masukkan ikan, daun jeruk, dan daun salam. \n5. Tambahkan garam dan penyedap rasa. \n6. Supaya gurih, tambahkan sedikit gula.'
      },
    ],
    'Olahan Sagu': [
      {
        'nama': 'Papeda',
        'gambar': 'assets/images/papeda.jpeg',
        'bahan': [
          '150 ml air matang dingin',
          '200 gram tepung sagu',
          '700-800 ml air panas mendidih',
        ],
        'cara': '1. Rebus air hingga mendidih.\n2. Larutkan tepung sagu dengan sedikit air dingin.\n3. Tuang larutan sagu ke dalam air mendidih sambil diaduk hingga mengental.\n4. Papeda siap disajikan.',
      },
      {
        'nama': 'Sagu Serut',
        'gambar': 'assets/images/sagu_serut.jpeg',
        'bahan': [
          'Bahan-bahan Sagu Serut...'
        ],
        'cara': 'Cara memasak Sagu Serut...'
      },
      {
        'nama': 'Sagu Tumbu',
        'gambar': 'assets/images/sagu_tumbu.jpg',
        'bahan': [
          'Bahan-bahan Sagu Tumbu...'
        ],
        'cara': 'Cara memasak Sagu Tumbu...'
      },
    ],
    'Camilan Khas': [
      {
        'nama': 'Roti Kering Kenari',
        'gambar': 'assets/images/roti_kering_kenari.jpg',
        'bahan': [
          'Bahan-bahan Roti Kering Kenari...'
        ],
        'cara': 'Cara memasak Roti Kering Kenari...'
      },
      {
        'nama': 'Ampas Terigu',
        'gambar': 'assets/images/ampas_terigu.jpg',
        'bahan': [
          'Bahan-bahan Ampas Terigu...'
        ],
        'cara': 'Cara memasak Ampas Terigu...'
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> resepList = kategoriResep[kategori] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(kategori),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategorySection(context, kategori, resepList),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(BuildContext context, String title, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResepDetailScreen(
                      judulResep: items[index]['nama'],
                      gambarResep: items[index]['gambar'],
                      bahan: List<String>.from(items[index]['bahan']),
                      caraMasak: items[index]['cara'],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    items[index]['gambar'],
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    items[index]['nama'],
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
