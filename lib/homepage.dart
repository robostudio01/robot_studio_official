import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robot_studio_official/squarebtn.dart';
import 'ctm_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 19, 25, 1),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.all(15)),
                  Text(
                    "ROBOT STUDIO",
                    style:
                        GoogleFonts.zenDots(fontSize: 23, color: Colors.white),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 6,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            labelColor: Color(0xFF00BAAB),
                            unselectedLabelColor: Color(0xFF5E5E5E),
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            unselectedLabelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            dividerColor: Colors.transparent,
                            indicatorPadding: EdgeInsets.only(right: 15),
                            indicatorColor: Color(0xFF00BAAB),
                            tabs: [
                              Tab(text: 'Home'),
                              Tab(text: 'Technologies'),
                              Tab(text: 'MusiLink'),
                              Tab(text: 'Investing'),
                              Tab(text: 'News'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButtons(
                    onTap: () {},
                    title: "Invest",
                    icon: '',
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                ],
              ),
              SizedBox(height: 8),
              Divider(height: 4, color: Color.fromARGB(253, 228, 227, 227)),
              SizedBox(height: 15),
              Center(
                child: Container(
                  width: 928, // Ширина большой картинки
                  height: 480, // Высота большой картинки
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/imgbg.png'), // Ваша картинка
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Invest in the future",
                              style: GoogleFonts.publicSans(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "ROBOT STUDIO is a company specializing in the development of new technologies and applications in robotics.\nOur goal is to create innovative solutions to improve people's lives and streamline business processes.",
                              style: GoogleFonts.publicSans(
                                  fontSize: 15, color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            BouncingButton(onTap: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(width: 210),
                  Text(
                    "Discover our value propositions",
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(height: 4, color: Color.fromARGB(253, 228, 227, 227)),
              SizedBox(height: 100),
              Row(
                children: [
                  SizedBox(width: 210),
                  Text(
                    "Technologies",
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
