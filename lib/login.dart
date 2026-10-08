import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nisn = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Izinku',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Masuk Izin\nAjukan izin, cek status riwayat',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Icon(Icons.security, size: 50), // Gambar/Logo sederhana
            const SizedBox(height: 20),
            TextField(
              controller: nisn,
              decoration: const InputDecoration(
                labelText: 'NISN / Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Kata Sandi',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (nisn.text.isNotEmpty && pass.text.isNotEmpty) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: const Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
