import 'package:flutter/material.dart';
import '../widgest/bill_card.dart';
import '../widgest/payment_tile.dart';
import '../dialogs/payment_dialogs.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Pembayaran",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BillCard(),
            const SizedBox(height: 30),
            const Text("Pilih Metode Pembayaran", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
            const SizedBox(height: 15),
            PaymentTile(
              icon: Icons.money,
              color: Colors.green,
              title: "Tunai (Cash)",
              onTap: () => showCashDialog(context),
            ),
            const SizedBox(height: 12),
            PaymentTile(
              icon: Icons.credit_card,
              color: Colors.purple,
              title: "Kartu Kredit",
              onTap: () => showCardDialog(context),
            ),
            const SizedBox(height: 12),
            PaymentTile(
              icon: Icons.qr_code_2,
              color: Colors.blue,
              title: "QRIS / QR Pay",
              onTap: () => showQRDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
