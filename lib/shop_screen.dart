import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/dashboard_screen.dart';
import 'package:pet_care_app/veterinary_screen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
    }

    switch (index) {
      case 0:
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyDashBoard()));
        break;
      case 1:
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => VeterinaryScreen()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ShopScreen()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Sarah",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Text(
                          "Find your lovable Pets",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      weight: 40,
                      size: 35,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 33,
                right: 33,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    hintText: 'Search something here',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 0.8)),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 2, color: Color.fromRGBO(250, 200, 162, 1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 2, color: Color.fromRGBO(250, 200, 162, 1))),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 155,
                          height: 175,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop1.png",
                            height: 157,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 155,
                          height: 175,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop2.png",
                            height: 157,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 155,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop3.png",
                            height: 133,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 149,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop4.png",
                            height: 157,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 155,
                          height: 197,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop5.png",
                            height: 157,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 153,
                          height: 149,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            ),
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image.asset(
                            "assets/shop6.png",
                            height: 133,
                            width: 138,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 23,
                          child: Container(
                            height: 29,
                            width: 106,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pets",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
          unselectedItemColor: const Color.fromRGBO(126, 128, 143, 1),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              // backgroundColor: Color.fromRGBO(126, 128, 143, 1),
              icon: Icon(Icons.home_outlined),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Service',
              // backgroundColor: Color.fromRGBO(126, 128, 143, 1),
            ),
            BottomNavigationBarItem(
                icon: Container(
                    height: 66,
                    width: 66,
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
                label: '',
                backgroundColor: const Color.fromRGBO(245, 146, 69, 1)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
          ]),
    );
  }
}
