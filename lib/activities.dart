import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
        children: [
          // Custom header for "Al Khidmah" (Centered)
          Container(
            padding: const EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: const Text(
              "Al Khidmah",
              style: TextStyle(
                  fontSize: 25, color: Colors.green, fontFamily: 'alhambra'),
            ),
          ),
          const SizedBox(
              height:
                  30), // Space between "Al Khidmah" and the left-aligned text

          // "Kegiatan"
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Kegiatan",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'sfprobold'),
            ),
          ),

          const SizedBox(height: 15),

          // "Jadwal"
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Jadwal",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'sfproregular'),
            ),
          ),

          const SizedBox(height: 10),

          // Grey Rounded Box Carousel
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // Padding for both sides
            child: SizedBox(
              height: 150, // Set height for the carousel
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Enables horizontal scrolling
                itemCount: 5, // Number of items in the carousel
                itemBuilder: (context, index) {
                  return Container(
                    width: 200, // Width of each box
                    margin: const EdgeInsets.only(
                        right: 15), // Spacing between boxes
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Light grey placeholder color
                      borderRadius:
                          BorderRadius.circular(15), // Rounded corners
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 30), // Space between Box and "Dokumentasi"

          // "Dokumentasi" below it
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Dokumentasi",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'sfproregular'),
            ),
          ),

          const SizedBox(height: 10),

          // Vertical List of Grey Boxes with Timestamp and Text Below Each Box
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 370, // Scrollable area height
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), // Side padding
                  itemCount: 5, // Number of grey boxes
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text left
                      children: [
                        Stack(
                          children: [
                            // Grey Box
                            Container(
                              width: double.infinity, // Full width
                              height: 200, // Height of each box
                              margin: const EdgeInsets.only(
                                  bottom: 10), // Space between items
                              decoration: BoxDecoration(
                                color:
                                    Colors.grey[300], // Light grey placeholder
                                borderRadius: BorderRadius.circular(
                                    15), // Rounded corners
                              ),
                            ),

                            // Timestamp (Bottom Right)
                            Positioned(
                              bottom: 20, // Near bottom
                              right: 15, // Near right
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4), // Padding
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(
                                      0.7), // Semi-transparent black
                                  borderRadius: BorderRadius.circular(
                                      8), // Rounded corners
                                ),
                                child: const Text(
                                  "15:20", // Static time
                                  style: TextStyle(
                                    color: Colors.white, // White text
                                    fontSize: 14, // Small size
                                    fontWeight: FontWeight.bold, // Bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Text Below Each Box
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 5, bottom: 15), // Small left padding
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Menyambut Bulan Suci Ramadhan",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'sfprobold',
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Align left and right
                                children: [
                                  Text(
                                    "K.H. Chatib Bisri",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54,
                                      fontFamily: 'sfproregular',
                                    ),
                                  ),
                                  Text(
                                    "3 hari lalu",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black45,
                                      fontFamily: 'sfproregular',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
