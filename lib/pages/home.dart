import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pool_clean_app/utils/global.colors.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hola parece ser un gran día',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: GlobalColors.textColor),
                      textAlign: TextAlign.start),
                  Text('Comencemos revisando los niveles de pH de tu piscina',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey[700]),
                      textAlign: TextAlign.start),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: 1.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 60,
                      startDegreeOffset: -90,
                      sections: getSections(),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'pH',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'SCALE',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xffFF0159),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xffFD5C01),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xffFCC403),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xffF8EE00),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xffADD302),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff6CC718),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff0EC140),
                        ),
                      ],
                    ),
                    Text('ACIDIC',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 70,
                          color: Color(0xff009E2D),
                        ),
                      ],
                    ),
                    Text('NEUTRAL',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff04B666),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff00C0B8),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff1D92D5),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff2D56AD),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff5E52A8),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff6744A2),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          color: Color(0xff4A2D7F),
                        ),
                      ],
                    ),
                    Text('ALKALINE',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Informes del monitor ',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.textColor),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Card(
                              color: Colors.white,
                              elevation: 8.0,
                              shadowColor: Colors.grey.withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                child: Column(
                                  children: [
                                    Text('Temperatura',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thermostat_sharp,
                                          color: GlobalColors.mainColor,
                                        ),
                                        Text(
                                          '25°',
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              color: Colors.white,
                              elevation: 8.0,
                              shadowColor: Colors.grey.withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 30),
                                child: Column(
                                  children: [
                                    Text('Humedad',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.water_drop_rounded,
                                          color: GlobalColors.mainColor,
                                        ),
                                        Text(
                                          '70%',
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 8.0,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 30),
                            child: Column(
                              children: [
                                Text('Bateria',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 50),
                                  child: CircularPercentIndicator(
                                    radius: 40,
                                    lineWidth: 5,
                                    percent: .7,
                                    progressColor: Colors.green,
                                    backgroundColor: Colors.grey.shade100,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.battery_5_bar,
                                          weight: 5,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '70%',
                                          style:
                                              GoogleFonts.poppins(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
            // Text(
            //   'Bateria',
            //   style: GoogleFonts.poppins(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    final colors = [
      Color(0xffFF0109),
      Color(0xffFD5C01),
      Color(0xffFCC403),
      Color(0xffF8EE00),
      Color(0xffADD302),
      Color(0xff6CC718),
      Color(0xff0EC140),
      Color(0xff009E2D),
      Color(0xff04B666),
      Color(0xff00C0B8),
      Color(0xff1D92D5),
      Color(0xff2D56AD),
      Color(0xff5E52A8),
      Color(0xff6744A2),
      Color(0xff4A2D7F),
    ];

    final labels = List.generate(15, (i) => i.toString());

    return List.generate(15, (i) {
      return PieChartSectionData(
        color: colors[i],
        value: 1,
        title: labels[i],
        titleStyle: TextStyle(fontSize: 12, color: Colors.white),
        radius: 50,
      );
    });
  }
}
