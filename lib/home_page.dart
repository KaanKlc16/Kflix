import 'package:carousel_slider/carousel_slider.dart';
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
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  viewportFraction: 0.55,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  autoPlayCurve: Curves.easeInCubic,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                ),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Color.fromARGB(255, 6, 5, 6),
                    ),
                  );
                },
              ),
            ),
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
            SizedBox(
              height: 190,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Color.fromARGB(255, 9, 255, 181),
                        height: 250,
                        width: 120,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Top Faded Movies',
              style: GoogleFonts.aBeeZee(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 190,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Color.fromARGB(255, 9, 255, 181),
                        height: 250,
                        width: 120,
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
