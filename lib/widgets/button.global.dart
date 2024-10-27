import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pool_clean_app/pages/crear_cuentra.dart';
import 'package:pool_clean_app/pages/login.dart';
import 'package:pool_clean_app/utils/global.colors.dart';
import 'package:pool_clean_app/widgets/menu.navegacion.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: GlobalColors.colorborde,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
            ]),
        child: Text(
          'Iniciar Sesión',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class ButtonGlobalCuenta extends StatelessWidget {
  const ButtonGlobalCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: GlobalColors.colorborde,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(color: Colors.white.withOpacity(0.1), blurRadius: 5)
            ]),
        child: Text(
          'Crear cuenta',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class ButtonInicio extends StatelessWidget {
  const ButtonInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: GlobalColors.colorborde,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
            ]),
        child: Text(
          'Iniciar Sesión',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class ButtonCuenta extends StatelessWidget {
  const ButtonCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CrearCuentaPage()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: GlobalColors.colorborde,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
            ]),
        child: Text(
          'Crear cuenta',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
