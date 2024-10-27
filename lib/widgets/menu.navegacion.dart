import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pool_clean_app/pages/dispositivo.dart';
import 'package:pool_clean_app/pages/home.dart';
import 'package:pool_clean_app/pages/perfil.dart';
import 'package:pool_clean_app/pages/dashboard.dart';
import 'package:pool_clean_app/pages/notificaciones.dart';
import 'package:pool_clean_app/utils/global.colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    DashboardPage(),
    DispositvoPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.cloud_outlined,
              color: GlobalColors.mainColor,
            ),
            SizedBox(width: 8),
            Text(
              '24C Mérida, Yuc.',
              style: GoogleFonts.poppins(color: Colors.grey[700], fontSize: 12),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: GlobalColors.mainColor,
            ),
            tooltip: 'Notificaciones',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificacionesPage()),
              );
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: GlobalColors.mainColor,
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
          Icon(Icons.device_hub, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
