import 'package:Kflix/widgets/movieSlider.dart';
import 'package:Kflix/widgets/trendinSlider.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieEx extends StatefulWidget {
  const MovieEx({super.key});

  @override
  State<MovieEx> createState() => _MovieExState();
}

class _MovieExState extends State<MovieEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/kflix.png',
          fit: BoxFit.cover,
          height: 220,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Trend Movies',
              style: GoogleFonts.aBeeZee(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const TrendingSlider(),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Top Hated Movies',
              style: GoogleFonts.aBeeZee(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const MovieSlider(),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Top Faded Movies',
              style: GoogleFonts.akayaTelivigala(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const MovieSlider(),
          ]),
        ),
      ),
    );
  }
}
