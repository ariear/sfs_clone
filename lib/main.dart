import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 237, 246)
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      Padding(
        padding: EdgeInsetsGeometry.only(top: 56, left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 134, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/unej.png',
                                width: 28,
                                height: 28,
                              ),
                              const SizedBox(width: 10),

                              const Text(
                                "Universitas Jember",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),

                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 26,
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsetsGeometry.only(top: 7, bottom: 12),
                        child: const Divider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/images/reza.jpeg',
                                ),
                              ),
                              const SizedBox(width: 10),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Reza Auditore",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),
                                  Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 3)),
                                  Text(
                                    "242410103099",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Icon(
                              Icons.qr_code,
                              color: Colors.white,
                              size: 38,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: EdgeInsetsGeometry.only(top: 18, bottom: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 14,
                    children: [
                      menuItem(Icons.flag, "Milestone"),
                      menuItem(Icons.school, "MMP"),
                      menuItem(Icons.assignment, "Hasil Studi"),
                      menuItem(Icons.fact_check, "Transkrip"),
                      menuItem(Icons.calendar_today, "Kehadiran"),
                      menuItem(Icons.wifi, "Cek Kuota"),
                      menuItem(Icons.event, "Event"),
                      menuItem(Icons.more_horiz, "More"),
                    ],
                  ),
                ),

                Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Jadwal", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),),
                        Text("Kalender Akademik", style: TextStyle(
                            color: Color.fromARGB(255, 0, 134, 255),
                            fontSize: 16
                        ),)
                      ],
                    )
                ),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "April, 2026",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Sen", style: TextStyle(fontSize: 14)),
                          Text("Sel", style: TextStyle(fontSize: 14)),
                          Text("Rab", style: TextStyle(fontSize: 14)),
                          Text("Kam", style: TextStyle(fontSize: 14)),
                          Text("Jum", style: TextStyle(fontSize: 14)),
                          Text("Sab", style: TextStyle(fontSize: 14)),
                          Text("Min", style: TextStyle(fontSize: 14)),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("6", style: TextStyle(fontSize: 16)),
                          const Text("7", style: TextStyle(fontSize: 16)),

                          Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 0, 134, 255),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const Text("9", style: TextStyle(fontSize: 16)),
                          const Text("10", style: TextStyle(fontSize: 16)),
                          const Text("11", style: TextStyle(fontSize: 16)),
                          const Text("12", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Jadwal Hari ini", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        )),
                        Text("Semua Jadwal", style: TextStyle(
                            color: Color.fromARGB(255, 0, 134, 255),
                            fontSize: 16
                        ))
                      ],
                    )
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.red,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "18:00  -  20:40 WIB",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "2h 40min",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsetsGeometry.only(top: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "📚 Pemrograman Berbasis Mobile ( Kelas C )",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Divider(color: Colors.grey.shade300),
                            const SizedBox(height: 3),
                            const Row(
                              children: [
                                Text("📍", style: TextStyle(fontSize: 20)),
                                SizedBox(width: 8),
                                Text(
                                  "RUANG KULIAH A3.3",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            const Row(
                              children: [
                                Text("🏢", style: TextStyle(fontSize: 20)),
                                SizedBox(width: 8),
                                Text(
                                  "GEDUNG 24A - ILMU KOMPUTER",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            const Row(
                              children: [
                                Text("⏰", style: TextStyle(fontSize: 20)),
                                SizedBox(width: 8),
                                Text(
                                  "-",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            const Row(
                              children: [
                                Text("📄", style: TextStyle(fontSize: 20)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    "navigasi, navigator, animasi transisi",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(child: actionButton("Zoom")),
                                const SizedBox(width: 5),
                                Expanded(child: actionButton("Materi")),
                                const SizedBox(width: 5),
                                Expanded(child: actionButton("MMP")),
                                const SizedBox(width: 5),
                                Expanded(child: actionButton("Presensi")),
                              ],
                            )
                          ],
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.red,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "18:00  -  20:40 WIB",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "2h 40min",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsetsGeometry.only(top: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "📚 Pemrograman Berbasis Mobile ( Kelas C )",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Divider(color: Colors.grey.shade300),
                          const SizedBox(height: 3),
                          const Row(
                            children: [
                              Text("📍", style: TextStyle(fontSize: 20)),
                              SizedBox(width: 8),
                              Text(
                                "RUANG KULIAH A3.3",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          const Row(
                            children: [
                              Text("🏢", style: TextStyle(fontSize: 20)),
                              SizedBox(width: 8),
                              Text(
                                "GEDUNG 24A - ILMU KOMPUTER",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          const Row(
                            children: [
                              Text("⏰", style: TextStyle(fontSize: 20)),
                              SizedBox(width: 8),
                              Text(
                                "-",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          const Row(
                            children: [
                              Text("📄", style: TextStyle(fontSize: 20)),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "navigasi, navigator, animasi transisi",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(child: actionButton("Zoom")),
                              const SizedBox(width: 5),
                              Expanded(child: actionButton("Materi")),
                              const SizedBox(width: 5),
                              Expanded(child: actionButton("MMP")),
                              const SizedBox(width: 5),
                              Expanded(child: actionButton("Presensi")),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ]
          ),
        )
      ),
      Center(
        child: Text(
          "Besok ajah",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromARGB(255, 0, 134, 255),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 134, 255),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget actionButton(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 0, 134, 255),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 134, 255),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
