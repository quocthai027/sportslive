import 'package:flutter/material.dart';

class BettingListWidget extends StatelessWidget {
  const BettingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity, // Chiều ngang full màn hình
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Tiêu đề
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Top Nhà Cái Uy Tín Nhất Việt Nam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),

            // Danh sách nhà cái
            BettingCard(
              logo: "assets/topncf168.png",
              name: "F168",
            ),
            const SizedBox(height: 16),
            BettingCard(
              logo: "assets/topnc500ae.png",
              name: "500AE TV",
            ),
          ],
        ),
      ),
    );
  }
}

// Widget hiển thị từng card
class BettingCard extends StatelessWidget {
  final String logo;
  final String name;

  const BettingCard({
    super.key,
    required this.logo,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15,right:15,bottom:15),
      child: Container(
        width: double.infinity, // Chiều ngang full
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Ảnh logo
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                logo,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            // Tên nhà cái
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Nút "CƯỢC NGAY"
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {},
              child: const Text(
                "CƯỢC NGAY",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
