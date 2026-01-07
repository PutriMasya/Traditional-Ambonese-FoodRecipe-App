import 'package:flutter/material.dart';
import 'resep_detail_screen.dart';

class KategoriScreen extends StatelessWidget {
  final String kategori;

  KategoriScreen({super.key, required this.kategori});

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
          '2 sdm kecap manis',
          '50 ml air'
        ],
        'cara': '1. Bakar ikan hingga matang, sisihkan.\n2. Campurkan cabe rawit, tomat, bawang merah, gula pasir, minyak, dan garam.\n3. Aduk hingga rata.\n4. Tambahkan air & perasan jeruk nipis, aduk hingga rata.\n5. Tambahkan kecap manis, aduk rata.\n6. Sajikan sambal colo-colo di atas ikan bakar.\n7. Nikmati dengan nasi putih hangat.'
      },
      {
        'nama': 'Ikan Asar',
        'gambar': 'assets/images/ikan_asar.jpeg',
        'bahan': [
          '1 ekor ikan cakalang ukuran sedang atau besar'
        ],
        'cara': '1. Siapkan tempat pengasaran dengan menggunakan bambu atau besi memanjang.\n2. Bakar ikan di atas tempat pengasaran dengan api kecil hingga ikan matang.\n3. Bersihkan ikan, buang insang dan isi perut.\n4. Belah ikan membujur, ikat dengan bambu agar tidak jatuh saat diasap.\n5. Sajikan dengan sambal colo-colo.'
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
          '5 buah cabe rawit merah',
          '2 ruas jahe',
          '2 ruas lengkuas',
          '2 batang sereh',
          '2 lembar daun salam',
          '4 lembar daun jeruk purut',
          '½ sendok teh ketumbar',
          '½ sendok teh jintan',
          'garam secukupnya'
        ],
        'cara': '1. Potong ikan berbentuk dadu.\n2. Haluskan semua bumbu.\n3. Tumis bumbu dengan sedikit minyak hingga harum.\n4. Masukkan ikan, daun jeruk, dan daun salam.\n5. Tambahkan garam dan penyedap rasa.\n6. Tambahkan gula sedikit untuk rasa gurih.'
      },
    ],
    'Olahan Sagu': [
      {
        'nama': 'Papeda',
        'gambar': 'assets/images/papeda.jpeg',
        'bahan': [
          '150 ml air matang dingin',
          '200 gram tepung sagu',
          '700-800 ml air panas mendidih'
        ],
        'cara': '1. Rebus air hingga mendidih.\n2. Larutkan tepung sagu dengan sedikit air dingin.\n3. Tuang larutan sagu ke dalam air mendidih sambil diaduk hingga mengental.\n4. Papeda siap disajikan.'
      },
      {
        'nama': 'Bubur Sagu Kuah Santan',
        'gambar': 'assets/images/sagu_serut.jpeg',
        'bahan': [
          '200 gram sagu Ambon kering',
          '100 ml santan instan, larutkan dengan 400 ml air',
          '8-10 sendok makan gula pasir',
          '2 lembar daun pandan, ikat simpul',
          'garam secukupnya',
          '200 ml santan, larutkan dengan 800 ml air',
          '3 lembar daun pandan, ikat simpul',
          'garam secukupnya'
        ],
        'cara': '1. Rendam sagu Ambon kering dalam air dingin hingga melunak, sekitar 45-60 menit.\n2. Remas-remas sagu hingga hancur dan teksturnya halus.\n3. Masak bahan sirup gula hingga mendidih, lalu tambahkan sagu.\n4. Aduk hingga mengental, koreksi rasa, dan matikan api.\n5. Rebus bahan kuah santan hingga mendidih, lalu matikan api dan biarkan dingin.\n6. Sajikan bubur sagu dengan kuah santan di atasnya. Nikmati selagi hangat atau dingin dengan es batu jika diinginkan.'
      },
      {
        'nama': 'Sagu Tumbu',
        'gambar': 'assets/images/sagu_tumbu.jpeg',
        'bahan': [
          '50 gr kenari',
          '100 gr tepung sagu',
          '3 sendok teh gula pasir',
          '1 buah gula merah'
        ],
        'cara': '1. Tumbuk sagu lempeng kering hingga halus menjadi tepung.\n2. Tumbuk biji kenari bersama gula merah hingga tercampur rata.\n3. Minyak dari kenari akan membantu membentuk adonan yang kalis dan tidak lengket.\n4. Bentuk adonan menjadi lonjong dan bungkus dengan kertas minyak atau plastik.\n5. Sajikan setelah dikemas.'
      },
    ],
    'Camilan Khas': [
      {
        'nama': 'Roti Kering Kenari',
        'gambar': 'assets/images/roti_kering_kenari.jpg',
        'bahan': [
          '4 lembar roti, bagi 2',
          '3 sdm Blue Band cookies',
          '2 sdm SKM',
          'Kenari cincang kasar',
          'Gula secukupnya',
          'Keju parut (opsional)'
        ],
        'cara': '1. Ambil 4 lembar roti, bagi 2.\n2. Campur Blue Band cookies dan SKM, oleskan pada tiap lembar roti.\n3. Taburi dengan kenari dan keju parut, tekan sedikit.\n4. Taburi gula pasir.\n5. Panggang di suhu 180°C hingga roti garing.\n6. Biarkan dingin sebelum disimpan dalam toples.'
      },
      {
        'nama': 'Ampas Terigu',
        'gambar': 'assets/images/ampas_terigu.jpg',
        'bahan': [
          '200 ml air',
          '150 gr kelapa parut',
          '2 lembar daun pandan',
          '500 gr tepung terigu protein tinggi',
          '150 gr gula aren',
          '2 butir kuning telur',
          '11 gr ragi',
          '50 gr mentega',
          '1 sdt kayumanis',
          'Garam secukupnya'
        ],
        'cara': '1. Rebus gula dengan daun pandan dan air, saring dan biarkan dingin.\n2. Campur tepung, kayumanis, ragi, dan telur, aduk rata.\n3. Tambahkan air gula sedikit demi sedikit, aduk rata.\n4. Tambahkan kelapa parut dan mentega, aduk hingga kalis.\n5. Diamkan adonan hingga mengembang 2x lipat.\n6. Timbang adonan 40 gr, bentuk bulat dan susun dalam loyang yang sudah dioles mentega.\n7. Diamkan 30 menit.\n8. Panggang dalam oven 20 menit, oles dengan mentega saat panas. Sajikan selagi hangat.'
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
      body: ListView.builder(
        itemCount: resepList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResepDetailScreen(
                      judulResep: resepList[index]['nama']!,
                      gambarResep: resepList[index]['gambar']!,
                      bahan: List<String>.from(resepList[index]['bahan']),
                      caraMasak: resepList[index]['cara']!,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        resepList[index]['gambar']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Text(
                        resepList[index]['nama']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
