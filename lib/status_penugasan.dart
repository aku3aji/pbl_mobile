import 'package:flutter/material.dart';

class StatusPenugasan extends StatefulWidget {
  @override
  _StatusPenugasanState createState() => _StatusPenugasanState();
}

class _StatusPenugasanState extends State<StatusPenugasan> {
  List<Map<String, dynamic>> tasks = [
    {
      'title': 'Bersihkan ruangan RT05',
      'person_in_charge': 'Tiaji Ibnu Hermawan',
      'due_date': 'DD-MM-YYYY',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'person_in_charge': 'Tiaji Ibnu Hermawan',
      'due_date': 'DD-MM-YYYY',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'person_in_charge': 'Tiaji Ibnu Hermawan',
      'due_date': 'DD-MM-YYYY',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'person_in_charge': 'Tiaji Ibnu Hermawan',
      'due_date': 'DD-MM-YYYY',
      'image': 'assets/room_image.png',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'person_in_charge': 'Tiaji Ibnu Hermawan',
      'due_date': 'DD-MM-YYYY',
      'image': 'assets/room_image.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 6, 127),
        title: Text(
          'STATUS PENUGASAN',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
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
            decoration: BoxDecoration(
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
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 58, 132),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari...',
                            suffixIcon: Icon(Icons.search),
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
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10),
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
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        tasks[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        tasks[index]['person_in_charge'],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tanggal Penyelesaian:',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            tasks[index]['due_date'],
                                            style: TextStyle(
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
