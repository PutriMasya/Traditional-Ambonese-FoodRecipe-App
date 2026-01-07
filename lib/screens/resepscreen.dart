import 'package:flutter/material.dart';

class ResepScreen extends StatelessWidget {
  final String judulResep;

  final Map<String, List<String>> bahan = {
    'Rujak Natsepa': [
      '1/4 buah pepaya setengah matang',
      '4 buah jambu air',
      '2 buah belimbing',
      '2 buah kedondong',
      '1 buah nanas kecil',
      '2 buah mangga muda',
      '2 buah mentimun',
      '250 gram gula merah saparua (atau bisa pakai gula merah)',
      '35 gram buah pala segar',
      '50 gram kacang tanah goreng',
      '50 gram nanas',
      '6 buah cabai rawit merah',
      'Garam secukupnya',
    ],
    'Papeda': [
      '150 ml air matang dingin',
      '200 gram tepung sagu',
      '700-800 ml air panas mendidih',
    ],
    'Sambal Colo-Colo': [
      '10 buah cabai rawit merah',
      '5 buah cabai rawit hijau',
      '3 buah tomat merah',
      '10 siung bawang merah',
      '4 tangkai daun kemangi',
      '1 sdt garam',
      '1 sdt gula',
      '2 sdm air jeruk nipis',
      'air secukupnya',
      'kecap manis secukupnya',
    ],
    'Ikan Kuah Kuning': [
      '1 kg ikan kakap',
      '2 buah jeruk nipis',
      '2 batang serai, memarkan',
      '3 lembar daun jeruk',
      '2 cm jahe, memarkan',
      '3 cm kunyit, bakar dan memarkan',
      '5 siung bawang merah, iris tipis',
      '3 siung bawang putih, iris tipis',
      '2 buah cabai merah besar, iris serong',
      '2 sdt garam',
      '1 sdt gula pasir',
      '1 liter air',
      '2 sdm minyak goreng',
    ],
    'Kohu-kohu': [
      '200 gram kelapa parut',
      '1 buah jeruk nipis',
      '2 batang serai, iris halus',
      '5 lembar daun jeruk, iris halus',
      '5 buah cabai rawit, iris halus',
      '2 sdm teri goreng',
      'Garam secukupnya',
    ],
  };

  final Map<String, List<String>> langkahMasak = {
    'Rujak Natsepa': [
      'Potong-potong semua buah sesuai selera, lalu sisihkan.',
      'Siapkan bumbu rujak. Haluskan cabai dan garam.',
      'Tambah parutan buah pala segar, kacang tanah, dan gula merah.',
      'Tambah potongan nanas agar bumbu jadi agak basah.',
      'Masukkan potongan buah ke dalam cobek, lalu campur sampai rata dengan bumbu.',
    ],
    'Papeda': [
      'Rebus air hingga mendidih.',
      'Larutkan tepung sagu dengan sedikit air dingin.',
      'Tuang larutan sagu ke dalam air mendidih sambil diaduk hingga mengental.',
      'Papeda siap disajikan',
    ],
    'Sambal Colo-Colo': [
      'Iris cabai rawit, bawang merah, dan tomat.',
      'Campur semua bahan iris dalam wadah.',
      'Tambahkan garam, gula, air jeruk nipis, dan air matang.',
      'Aduk rata dan siap disajikan.',
    ],
    'Ikan Kuah Kuning': [
      'Bersihkan ikan dan lumuri dengan air jeruk nipis, diamkan 15 menit lalu bilas.',
      'Tumis bawang merah, bawang putih, cabai merah, serai, jahe, kunyit, dan daun jeruk hingga harum.',
      'Masukkan ikan dan aduk hingga berubah warna.',
      'Tambahkan air, garam, dan gula, masak hingga ikan matang dan kuah mengental.',
      'Sajikan ikan kuah kuning selagi panas.',
    ],
    'Kohu-kohu': [
      'Campur kelapa parut dengan air jeruk nipis, serai, daun jeruk, dan cabai rawit.',
      'Aduk rata dan tambahkan teri goreng.',
      'Tambahkan garam secukupnya dan aduk kembali hingga rata.',
      'Kohu-kohu siap disajikan.',
    ],
  };

  ResepScreen({required this.judulResep, super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judulResep),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Bahan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (var item in bahan[judulResep]!) Text('- $item'),
            const SizedBox(height: 16),
            const Text(
              'Cara Memasak:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (var step in langkahMasak[judulResep]!) Text('- $step'),
          ],
        ),
      ),
    );
  }
}
