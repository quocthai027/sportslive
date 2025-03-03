import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Điều Khoản Sử Dụng"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tiêu đề chính
            const Text(
              "Điều khoản sử dụng tại 500AE TV",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 16),

            // Nội dung giới thiệu
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "Chào mừng bạn đến với ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "nơi cung cấp thông tin, dịch vụ liên quan đến bóng đá và các sự kiện thể thao hàng đầu. "
                        "Khi truy cập và sử dụng website của chúng tôi, bạn đồng ý tuân thủ các điều khoản sử dụng được quy định dưới đây. "
                        "Vui lòng đọc kỹ để hiểu rõ quyền lợi và trách nhiệm của mình.\n\n",
                  ),
                ],
              ),
            ),

            // Hình ảnh minh họa
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/dieukhoan1.png", // Thay thế bằng ảnh thực tế
                fit: BoxFit.cover,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}