import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pool_clean_app/pages/crear_cuentra.dart';
import 'package:pool_clean_app/utils/global.colors.dart';
import 'package:pool_clean_app/widgets/button.global.dart';
import 'package:pool_clean_app/widgets/text.form.global.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController correoController = TextEditingController();
  final TextEditingController contraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pool2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 150),
                    child: SafeArea(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: GlobalColors.textColor.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'POOL CLEAN',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ),
                            SizedBox(height: 50),
                            Center(
                              child: Text(
                                'Inicia sesión con tu cuenta',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            SizedBox(height: 15),
                            TextGeneralForm(
                              controller: correoController,
                              text: 'Correo',
                              obscure: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 15),
                            TextGeneralForm(
                              controller: contraController,
                              text: 'Contraseña',
                              obscure: true,
                              textInputType: TextInputType.text,
                            ),
                            SizedBox(height: 15),
                            ButtonGlobal(),
                            SizedBox(height: 50),
                            Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '¿Aun no tienes cuenta?',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black.withOpacity(0.5),
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                    )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CrearCuentaPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Crear cuenta',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
