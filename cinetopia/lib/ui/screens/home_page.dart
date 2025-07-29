import 'package:cinetopia/ui/components/buttons.dart';
import 'package:cinetopia/ui/screens/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000000), Color.fromARGB(255, 85, 8, 107), ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
                Image.asset(
                  'assets/splash.png',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("O lugar ideal para buscar, salvar e organizar seus filmes favoritos!", textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  text: 'Quero começar',
                  icon: Icons.arrow_forward,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}