import 'package:flutter/material.dart';
import 'shalat.dart';
import 'event.dart';

class Prays extends StatefulWidget {
  const Prays({super.key});

  @override
  State<Prays> createState() => _PraysState();
}

class _PraysState extends State<Prays> {
  bool showShalat = true; // Default to showing Shalat content

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(height: 30),

          // "Ibadah"
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Ibadah",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'sfprobold'),
            ),
          ),

          const SizedBox(height: 15),

          // Center-aligned date and location text
          const Center(
            child: Column(
              children: [
                Text(
                  "Selasa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'sfproregular',
                  ),
                ),
                SizedBox(height: 0), // Reduced vertical space
                Text(
                  "18 Februari 2025",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontFamily: 'sfproregular',
                  ),
                ),
                SizedBox(height: 0), // Reduced vertical space
                Text(
                  "20 Sya'ban 1448 H",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontFamily: 'sfproregular',
                  ),
                ),
                SizedBox(
                    height: 0), // Slightly larger space before the divider row
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Add horizontal padding
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black54, // Line color
                          thickness: 1, // Line thickness
                          endIndent: 10, // Space between line and text
                        ),
                      ),
                      Text(
                        "Jakarta Selatan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontFamily: 'sfproregular',
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black54,
                          thickness: 1,
                          indent: 10, // Space between line and text
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 15),

          // "Waktu Sholat" and "Momen Penting" inside capsules
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                // Capsule for "Waktu Sholat"
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showShalat = true;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: showShalat
                          ? Colors.green.withOpacity(0.2)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.green.withOpacity(0.5),
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      "Waktu Sholat",
                      style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: showShalat ? Colors.green : Colors.black,
                        fontFamily: 'sfproregular',
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10), // Space between capsules

                // Capsule for "Momen Penting"
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showShalat = false;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: !showShalat
                          ? Colors.green.withOpacity(0.2)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.green.withOpacity(0.5),
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      "Tanggal Penting",
                      style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: !showShalat ? Colors.green : Colors.black,
                        fontFamily: 'sfproregular',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Content Area - Switch between ShalatScreen & EventScreen
          Expanded(
            child: showShalat ? const ShalatScreen() : const EventScreen(),
          ),
        ],
      ),
    );
  }
}
