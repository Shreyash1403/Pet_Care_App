import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care_app/dashboard_screen.dart';
import 'package:pet_care_app/detail_doctor_screen.dart';
import 'package:pet_care_app/model.dart';
import 'package:google_fonts/google_fonts.dart';

class VeterinaryScreen extends StatefulWidget {
  const VeterinaryScreen({super.key});

  @override
  State<VeterinaryScreen> createState() => _VeterinaryScreenState();
}

class _VeterinaryScreenState extends State<VeterinaryScreen> {
  final TextEditingController _searchController = TextEditingController();

  List<Model> imageList = [
    Model(imageUrl: 'assets/vacations.png', categoryName: 'Vacations'),
    Model(imageUrl: "assets/operations.png", categoryName: "Operations"),
    Model(imageUrl: "assets/behavioral.png", categoryName: "Behavioral"),
    Model(imageUrl: "assets/dentistry.png", categoryName: "Dentistry"),
  ];

  List<Doc> docList = [
    Doc(
        imageUrl: "assets/veterinary_profile.png",
        drType: 'Veterinary Behavioral',
        drNames: 'Dr. Anna Johanson')
  ];

  List<Doctors> doctorList = [
    Doctors(
        imageUrl: 'assets/Dr.Anna.png',
        drNames: 'Dr. Anna Johanson',
        drType: 'Veterinary Behavioral',
        ratings: 4.8,
        loc: 1),
    Doctors(
        imageUrl: 'assets/Dr.Vernon.png',
        drNames: 'Dr. Vernon Chwe',
        drType: 'Veterinary Surgery',
        ratings: 4.9,
        loc: 1.5),
    Doctors(
        imageUrl: 'assets/Dr.Maria.png',
        drNames: 'Dr. Maria Nai',
        drType: 'Veterinary Dentist',
        ratings: 4.5,
        loc: 1.7),
  ];

  int _index = 0;
  void _handleNavigation(int index) {
    setState(() {
      _index = index;
    });

    switch (_index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MyDashBoard()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => VeterinaryScreen()));
        break;
      // Add more cases for other indices as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 55, left: 24, right: 24),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "London, UK",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 146, 69, 1),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                    offset: Offset(0, 8),
                    blurRadius: 16,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lets Find Specialist\nDoctor for Your Pet!",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: double.infinity,
                    // width: 96,
                    child: Image.asset(
                      "assets/veterinary_image.png",
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 45,
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(250, 200, 162, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(250, 200, 162, 1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 85,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  bool isLastItem = index == imageList.length - 1;
                  return Padding(
                    padding: EdgeInsets.only(right: isLastItem ? 0 : 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Image.asset(imageList[index].imageUrl!),
                          const SizedBox(height: 6),
                          Text(
                            imageList[index].categoryName!,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Best Specialists Nearby",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: doctorList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 122,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return DoctorDetailsScreen(
                                  doctor: doctorList[index]);
                            }),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset(doctorList[index].imageUrl!),
                              const SizedBox(width: 13),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      doctorList[index].drNames!,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    Text(
                                      doctorList[index].drType!,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.4),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_border_rounded,
                                          color:
                                              Color.fromRGBO(248, 182, 131, 1),
                                        ),
                                        Text(
                                          "${doctorList[index].ratings},",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.4),
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color:
                                              Color.fromRGBO(248, 182, 131, 1),
                                        ),
                                        Text(
                                          "${doctorList[index].loc}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
        onTap: _handleNavigation,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 66,
              width: 66,
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            label: '',
            backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
