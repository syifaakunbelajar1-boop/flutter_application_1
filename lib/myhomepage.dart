import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nisn = TextEditingController();
  TextEditingController kelas = TextEditingController();
  TextEditingController alasan = TextEditingController();

  String resNama = '';
  String resKelas = '';
  String resAlasan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Izinku',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('Ajukan dan cek status izin'),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                'Masuk Izin',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nisn,
                    decoration: const InputDecoration(
                      labelText: 'NISN',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: kelas,
                    decoration: const InputDecoration(
                      labelText: 'Kelas',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: alasan,
              decoration: const InputDecoration(
                labelText: 'Alasan',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    resNama = "Ataya Ersy";
                    resKelas = kelas.text;
                    resAlasan = alasan.text;
                  });
                },
                child: const Text('Ajukan Izin'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Permohonan Baru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Nama : $resNama'),
                  Text('Kelas : $resKelas'),
                  Text('Alasan : $resAlasan'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
