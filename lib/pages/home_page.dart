import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List categories = [
    ['assets/icons/wind_icon.png', 'Hutan'],
    ['assets/icons/shopping_bag_icon.png', 'Toko'],
    ['assets/icons/truck_icon.png', 'Gudang'],
    ['assets/icons/cloud_drizzle_icon.png', 'Hujan'],
    ['assets/icons/briefcase_icon.png', 'Office'],
    ['assets/icons/wind_icon.png', 'Hutan'],
  ];

  List staffPicks = [
    ['assets/images/image1.png', 'Lagon Sky', '412 sp ft.', '\$920'],
    ['assets/images/image2.png', 'Inn Parapatt', '800 sp ft.', '\$520']
  ];

  List bestAgents = [
    ['assets/images/agent1.png', 'Satthu', '1902 sold'],
    ['assets/images/agent2.png', 'Isy Mana', '839 sold'],
    ['assets/images/agent3.png', 'Luph', '422 sold'],
    ['assets/images/agent1.png', 'Satthu', '1902 sold'],
  ];

  List cities = [
    ['assets/images/image3.png', 'Jakarta Selatan', '192 property', true],
    ['assets/images/image4.png', 'Bandung', '89,400 property', false],
    ['assets/images/image5.png', 'Denpasar', '184,000 property', false],
  ];

  List bottomNavIcons = [
    ['assets/icons/home_icon.png', 'Discover'],
    ['assets/icons/heart_icon.png', 'Favorites'],
    ['assets/icons/tv_icon.png', 'TV News'],
    ['assets/icons/settings_icon.png', 'Settings'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Estate",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff151619),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Best discovery ever",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff6B6978),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/icons/notification_icon.png",
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Categories",
                style: GoogleFonts.poppins(
                  color: const Color(0xff151619),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((data) {
                    return Container(
                      margin: const EdgeInsets.only(right: 1),
                      width: 70,
                      height: 74,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            data[0],
                            width: 24,
                            height: 24,
                          ),
                          Text(
                            data[1],
                            style: GoogleFonts.poppins(
                              color: const Color(0xff151619),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Staff Picks",
                style: GoogleFonts.poppins(
                  color: const Color(0xff151619),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: staffPicks.map((data) {
                    return Container(
                      width: 200,
                      height: 181,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              data[0],
                              width: 180,
                              height: 110,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[1],
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff151619),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    data[2],
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff6B6978),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                data[3],
                                style: GoogleFonts.poppins(
                                  color: const Color(0xffF7AF4B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Best Agents",
                style: GoogleFonts.poppins(
                  color: const Color(0xff151619),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: bestAgents.map((data) {
                    return Container(
                      width: 90,
                      height: 120,
                      margin: const EdgeInsets.only(left: 8, right: 8),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              data[0],
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Text(
                            data[1],
                            style: GoogleFonts.poppins(
                              color: const Color(0xff151619),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            data[2],
                            style: GoogleFonts.poppins(
                              color: const Color(0xff151619),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Best Agents",
                style: GoogleFonts.poppins(
                  color: const Color(0xff151619),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                child: Column(
                  children: cities.map((data) {
                    return Container(
                      width: double.infinity,
                      height: 90,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              data[0],
                              width: 90,
                              height: 70,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[1],
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff151619),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                data[2],
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff6B6978),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          data[3] == true
                              ? Container(
                                  width: 30,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff322E4A),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "HOT",
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xffF7AF4B),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffF7AF4B),
        selectedLabelStyle: GoogleFonts.poppins(
          color: const Color(0xff15124D),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedItemColor: const Color(0xffA6A5B1),
        unselectedLabelStyle: GoogleFonts.poppins(
          color: const Color(0xffA6A5B1),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        showUnselectedLabels: true,
        elevation: 0,
        backgroundColor: Colors.white,
        items: bottomNavIcons.map((data) {
          return BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(data[0]),
            ),
            label: data[1],
          );
        }).toList(),
      ),
    );
  }
}
