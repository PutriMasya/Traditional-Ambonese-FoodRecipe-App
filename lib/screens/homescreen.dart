import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resep_app/screens/kategori_screen.dart';
import 'package:resep_app/widgets/kategori_item.dart';
import 'kategori_masakan_screen.dart';
import 'profilescreen.dart';
import 'resepscreen.dart';
// ignore: unused_import
import 'kategori_item.dart'; // Update with the correct path to your KategoriItem file


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Dummy data untuk resep populer
  final List<Map<String, String>> resepPopuler = [
    {
      'nama': 'Rujak Natsepa',
      'gambar': 'assets/images/rujak_natsepa.jpeg',
    },
    {
      'nama': 'Papeda',
      'gambar': 'assets/images/papeda.jpeg',
    },
    {
      'nama': 'Sambal Colo-Colo',
      'gambar': 'assets/images/sambal_colo_colo.jpg',
    },
    {
      'nama': 'Ikan Kuah Kuning',
      'gambar': 'assets/images/ikan_kuah_kuning.jpg',
    },
    {
      'nama': 'Kohu-kohu',
      'gambar': 'assets/images/kohu_kohu.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resep Makanan Ambon'),
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
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Kategori Masakan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return const KategoriMasakanScreen(); // Display the category screen
      case 2:
        return const ProfileScreen();
      default:
        return const SizedBox(); // Return an empty widget if index is out of range
    }
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Selamat Datang',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Nikmati beragam resep masakan khas Ambon yang lezat dan mudah dibuat. Jelajahi kategori masakan dan temukan favorit Anda!',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          const Text(
            'Makanan Khas Ambon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: resepPopuler.length,
              itemBuilder: (ctx, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResepScreen(
                            judulResep: resepPopuler[index]['nama']!,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              resepPopuler[index]['gambar']!,
                              height: 120,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            resepPopuler[index]['nama']!,
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Kategori Masakan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              KategoriItem(
                'Olahan Nasi',
                icon: Icons.rice_bowl,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          KategoriScreen(kategori: 'Olahan Nasi'),
                    ),
                  );
                },
              ),
              KategoriItem(
                'Olahan Ikan',
                icon: FontAwesomeIcons.fish,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          KategoriScreen(kategori: 'Olahan Ikan'),
                    ),
                  );
                },
              ),
              KategoriItem(
                'Olahan Sagu',
                icon: FontAwesomeIcons.utensils,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          KategoriScreen(kategori: 'Olahan Sagu'),
                    ),
                  );
                },
              ),
              KategoriItem(
                'Camilan Khas',
                icon: Icons.fastfood,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          KategoriScreen(kategori: 'Camilan Khas'),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
