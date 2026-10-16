
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dasar_project/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF12366B);
    const blue = Color(0xFF1D5DB5);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0B1F42),
              Color(0xFF12366B),
              Color(0xFF1D5DB5),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Dekorasi latar belakang
              Positioned(
                top: -70,
                right: -60,
                child: _circleDecoration(220),
              ),
              Positioned(
                bottom: -100,
                left: -70,
                child: _circleDecoration(260),
              ),

              // Konten utama
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo kampus
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(
                                alpha: 0.15,
                              ),
                              blurRadius: 25,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/tess.png',
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.school_rounded,
                              size: 65,
                              color: navy,
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 28),

                      const Text(
                        'UNIGAL APPS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'UNIVERSITAS GALUH',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                          color: Color(0xFFD5E5FF),
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Label sistem akademik
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.10),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.20),
                          ),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              'SISTEM INFORMASI AKADEMIK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Layanan akademik dalam satu platform',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFD5E5FF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 48),

                      const SizedBox(
                        width: 150,
                        child: LinearProgressIndicator(
                          minHeight: 3,
                          backgroundColor: Color(0x557FA8E8),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      const Text(
                        'Menyiapkan aplikasi...',
                        style: TextStyle(
                          color: Color(0xFFD5E5FF),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Footer
              const Positioned(
                left: 20,
                right: 20,
                bottom: 18,
                child: Text(
                  'ACADEMIC INFORMATION SYSTEM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFB7D0F5),
                    fontSize: 10,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _circleDecoration(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.07),
          width: 24,
        ),
      ),
    );
  }
}


