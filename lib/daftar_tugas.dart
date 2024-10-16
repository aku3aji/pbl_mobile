import 'package:flutter/material.dart';

class DaftarTugas extends StatefulWidget {
  const DaftarTugas({super.key});

  @override
  _DaftarTugasState createState() => _DaftarTugasState();
}

class _DaftarTugasState extends State<DaftarTugas> {
  List<Map<String, dynamic>> tasks = [
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/room_image.png',
    },
  ];

  void _showFilterDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Filter Berdasarkan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4B367C),
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Berdasarkan Status'),
                const SizedBox(height: 5),
                const Text('Berdasarkan Bobot Jam/Poin: Dari Kecil - Besar'),
                const SizedBox(height: 5),
                const Text('Berdasarkan Bobot Jam/Poin: Dari Besar - Kecil'),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Tutup'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 6, 127),
        title: const Text(
          'DAFTAR TUGAS',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 42, 6, 127),
                  Colors.white,
                ],
                stops: [0.5, 0.5],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 89, 58, 132),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.filter_list,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: _showFilterDialog,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari...',
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    tasks[index]['image'],
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        tasks[index]['title'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        tasks[index]['description'],
                                        style: const TextStyle(fontSize: 12),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            tasks[index]['lecturer'],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            tasks[index]['time'],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            tasks[index]['due'],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
