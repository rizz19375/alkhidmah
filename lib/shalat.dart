import 'package:flutter/material.dart';

class ShalatScreen extends StatelessWidget {
  const ShalatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20), // Added vertical space above the first row
          _buildRow("Subuh", "04:43"),
          _buildRow("Dhuha", "07:00"),
          _buildRow("Dhuhur", "12:04"),
          _buildBoldRow("Ashar", "✵", "15:15"), // Only this line is bold
          _buildRow("Maghrib", "18:13"),
          _buildRow("Isya", "19:20"),
          _buildRow("Qiyam", "01:13"),
        ],
      ),
    );
  }

  // Helper method to build a normal row
  Widget _buildRow(String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0), // Vertical spacing
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              leftText,
              style: const TextStyle(
                fontSize: 21,
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
          const Text(
            "✵",
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontFamily: 'sfproregular',
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                rightText,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontFamily: 'sfproregular',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for bold "Ashar * 15:15"
  Widget _buildBoldRow(String leftText, String middleText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Vertical spacing
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              leftText,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold, // Make bold
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
          Text(
            middleText,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold, // Make bold
              color: Colors.black,
              fontFamily: 'sfproregular',
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                rightText,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold, // Make bold
                  color: Colors.black,
                  fontFamily: 'sfproregular',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
