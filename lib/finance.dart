import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Finance extends StatefulWidget {
  const Finance({super.key});

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom header for "Al Khidmah" (Centered)
            Container(
              padding: const EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              child: const Text(
                "Al Khidmah",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontFamily: 'alhambra',
                ),
              ),
            ),
            const SizedBox(height: 30),

            // "Keuangan" Title
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keuangan",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'sfprobold',
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "28 Februari - 7 Maret 2025",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontFamily: 'sfproregular',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Saldo Section
            const Text(
              "Saldo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontFamily: 'sfproregular',
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Rp 6.000.000",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'sfprobold',
              ),
            ),
            const SizedBox(height: 20),

            // Pemasukan Section
            _buildFinanceRow("Pemasukan", "Rp 1.000.000",
                bold: true, large: true),
            _buildFinanceRow("Tromol masjid", "Rp 500.000"),
            _buildFinanceRow("Infaq QRIS", "Rp 500.000"),
            const SizedBox(height: 15),

            // Pengeluaran Section
            _buildFinanceRow("Pengeluaran", "Rp 300.000",
                bold: true, large: true),
            _buildFinanceRow("Biaya kajian", "Rp 100.000"),
            _buildFinanceRow("Honor penceramah", "Rp 200.000"),

            const Spacer(), // Pushes QR Code to the bottom

            // QR Code & Masjid Info (Side by Side)
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Aligns QR code and text to the top
              children: [
                // QR Code (Reduced size)
                QrImageView(
                  data:
                      "https://example.com/donation", // Replace with actual QR code link
                  version: QrVersions.auto,
                  size: 120, // Reduced size
                ),
                const SizedBox(width: 15), // Spacing between QR and text

                // Masjid Info (Right of QR Code)
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Masjid Al Khidmah MPP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontFamily: 'sfproregular',
                      ),
                    ),
                    Text(
                      "NMID ID1021102956211",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontFamily: 'sfproregular',
                      ),
                    ),
                    Text(
                      "A01",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontFamily: 'sfproregular',
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 40), // Extra spacing from bottom
          ],
        ),
      ),
    );
  }

  Widget _buildFinanceRow(String title, String amount,
      {bool bold = false, bool large = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Baseline(
            baseline: 24, // Ensures text aligns properly
            baselineType: TextBaseline.alphabetic,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                color: bold ? Colors.black : Colors.black54,
                fontFamily: 'sfproregular',
              ),
            ),
          ),
          Baseline(
            baseline: 24,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              amount,
              style: TextStyle(
                fontSize: large ? 24 : 20, // Larger for Pemasukan & Pengeluaran
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
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
