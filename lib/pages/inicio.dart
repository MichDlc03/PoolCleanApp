import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pool_clean_app/utils/global.colors.dart';
import 'package:pool_clean_app/widgets/button.global.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Stack(
        children: [
          ClipPath(
            clipper: CurvedHeaderClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 70),
                    Text(
                      'Bienvenido a ',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'POOL CLEAN',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonInicio(),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonCuenta(),
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

class CurvedHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
