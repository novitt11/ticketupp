import 'package:flutter/material.dart';
import 'success_dialog.dart';

void _showDialogBase(
  BuildContext context, {
  required String title,
  required Widget content,
}) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close)),
              ],
            ),
            const SizedBox(height: 20),
            content,
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.pop(context);
                showSuccessDialog(context);
              },
              child: const Text("Konfirmasi Pembayaran"),
            ),
          ],
        ),
      ),
    ),
  );
}

void showCashDialog(BuildContext context) {
  _showDialogBase(
    context,
    title: "Pembayaran Tunai",
    content: Column(
      children: const [
        Icon(Icons.payments, size: 80, color: Colors.green),
        SizedBox(height: 15),
        Text("Pembayaran Tunai", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text("Jika pembayaran telah diterima, klik button konfirmasi pembayaran untuk menyelesaikan transaksi.", textAlign: TextAlign.center),
      ],
    ),
  );
}

void showCardDialog(BuildContext context) {
  _showDialogBase(
    context,
    title: "Pembayaran Kartu Kredit",
    content: Column(
      children: const [
        Icon(Icons.credit_card, size: 80, color: Colors.blue),
        SizedBox(height: 15),
        Text("Transfer Pembayaran", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text("Pastikan nominal dan tujuan pembayaran sudah benar sebelum melanjutkan.", textAlign: TextAlign.center),
      ],
    ),
  );
}

void showQRDialog(BuildContext context) {
  _showDialogBase(
    context,
    title: "Pembayaran QRIS",
    content: Column(
      children: const [
        Icon(Icons.qr_code, size: 100),
        SizedBox(height: 15),
        Text("Scan QR untuk Membayar", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text("Gunakan aplikasi e-wallet atau mobile banking untuk scan QR di atas dan selesaikan pembayaran.", textAlign: TextAlign.center),
     
      ],
    ),
  );
}