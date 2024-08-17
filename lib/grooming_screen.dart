import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/model.dart';

class Grooming extends StatefulWidget {
  const Grooming({super.key});

  @override
  State<Grooming> createState() => _GroomingState();
}

class _GroomingState extends State<Grooming> {
  List<Services> cardlist = [
    Services(name: 'Bathing & Drying', image: 'assets/card6.png'),
    Services(name: 'Hair Triming', image: 'assets/card5.png'),
    Services(name: 'Nail Trimming', image: 'assets/card4.png'),
    Services(name: 'Ear Cleaning', image: 'assets/card3.png'),
    Services(name: 'Teeth Brushing', image: 'assets/card2.png'),
    Services(name: 'Flea Treatment', image: 'assets/card1.png')
  ];

  Widget myCard(String name, String image) {
    return Container(
      height: 180,
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 16,
                spreadRadius: -4,
                offset: Offset(0, 8))
          ]),
      child: Column(
        children: [
          Image.asset(image),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(49, 29, 14, 1)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.only(left: 4),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(245, 146, 69, 1)),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ))),
              Expanded(
                child: Center(
                  child: Text(
                    "Grooming",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(31, 32, 41, 1)),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        blurRadius: 16,
                        spreadRadius: -4,
                        offset: Offset(0, 8))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "60% OFF",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(245, 245, 247, 1)),
                      ),
                      Text(
                        "On hair & spa treatment",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 245, 247, 1)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset("assets/gromming_profile.png")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'search',
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Our Services",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const Spacer(),
                GestureDetector(
                  child: Text("See All",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.8))),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: cardlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return myCard(cardlist[index].name, cardlist[index].image);
                },
              ),
            ),
          ])),
    );
  }
}
