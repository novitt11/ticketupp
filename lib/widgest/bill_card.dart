import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  const BillCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 12),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[50],
            ),
            child: const Icon(Icons.receipt_long, color: Colors.blue),
          ),
          const SizedBox(width: 15),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Tagihan", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text("Rp 450.000", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                SizedBox(height: 10),
                Text("Tiket untuk Dewasa – VIP"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}