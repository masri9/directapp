import 'package:flutter/material.dart';
import 'home_screen.dart'; // استدعاء ملف الصفحة الرئيسية

void main() {
  runApp(const SidarApp());
}

class SidarApp extends StatelessWidget {
  const SidarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidar App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Roboto', // يمكنك تغيير الخط لاحقاً
      ),
      home: const HomeScreen(),
    );
  }
}
