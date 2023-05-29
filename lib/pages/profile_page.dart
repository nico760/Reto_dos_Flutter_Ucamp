import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage('images/nico.jpg'),
                  fit: BoxFit.contain
                  )
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text('Este es el proyecto del modulo 2',
          style: GoogleFonts.ubuntu(fontSize: 24),
          ),
          const Spacer(),
          const Text('Realizado por Nicolás',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 14,
          ),
          ),
        ],
      ),
    );
  }
}