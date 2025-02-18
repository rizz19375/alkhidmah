import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _buildRow("Ramadhan", "1 Maret"),
          _buildRow("10 Malam Terakhir", "20 Maret"),
          _buildRow("Idul Fitri", "30 Maret"),
          _buildRow("Ayyamul Bidh", "14 April"),
          _buildRow("Haji", "4 Juni"),
          _buildRow("Arafah", "5 Juni"),
          _buildRow("Idul Adha", "6 Juni"),
        ],
      ),
    );
  }

  Widget _buildRow(String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              leftText,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0), // Moves ✵ slightly to the right
            child: Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
          Expanded(
            child: Text(
              rightText,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
