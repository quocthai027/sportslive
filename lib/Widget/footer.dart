import 'package:flutter/material.dart';

import '../Footer/banquyen.dart';
import '../Footer/dieukhoan.dart';
import '../Footer/lienhe.dart';
import '../Footer/mientrutrachnhiem.dart';
import '../Footer/vechungtoi.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/footer.png', // Ảnh nền
              fit: BoxFit.cover,
             
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  Image.asset(
                    'assets/500ae_footer.png', // Logo 500AE
                    height:100
                  
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Kênh trực tiếp bóng đá chất lượng cao với dàn bình luận viên chuyên nghiệp và đầy nhiệt huyết tại 500AE sẽ mang đến những phút giây tuyệt vời nhất dành cho fan hâm mộ khi xem bóng đá online. '
                  'Hệ thống kênh trực tiếp bóng đá 500AE chất lượng cao với đường truyền ổn định, không lỗi, không lag và luôn luôn là nền tảng xem bóng đá trực tuyến số 1 được yêu thích nhất. '
                  'Hãy truy cập ngay kênh 500AE để đồng hành và trải nghiệm sự tuyệt vời của bóng đá cùng chúng tôi!',
                  style: TextStyle(color: Colors.white, fontSize: 17, height: 1.5),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 30),
              _buildFooterNavigation(context),
              const SizedBox(height: 30),
              _buildFooterSection(context),
            ],
          ),
        ),
      ],
    );
  }

  /// **🔹 Tạo Menu Điều Hướng**
  Widget _buildFooterNavigation(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _footerNavItem(context, 'Về chúng tôi', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            }),
            const SizedBox(width: 40),
            _footerNavItem(context, 'Miễn trừ trách nhiệm', () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DisclaimerScreen()),
              );
            }),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _footerNavItem(context, 'Liên hệ', () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactScreen()),
              );
            }),
            const SizedBox(width: 40),
            _footerNavItem(context, 'Bản quyền', () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CopyrightPolicyScreen()),
              );
            }),
          ],
        ),
      ],
    );
  }


  /// **🔹 Tạo Một Mục Menu**
  Widget _footerNavItem(BuildContext context, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }


  /// **Tạo Phần Footer**
  Widget _buildFooterSection(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TermsScreen()),
          );
        },
        child: const Text(
          'Điều khoản & Điều kiện',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
        const SizedBox(height: 30),
        const Text(
          'Chính sách bảo mật',
          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        const Text(
          'ĐỐI TÁC CỦA CHÚNG TÔI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'ĐỐI TÁC CHÍNH THỨC CỦA OKVIP - F168',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 15),
         Image.asset('assets/logo_footer.png',),
        
        const SizedBox(height: 30),
        const Text(
          'Copyright © 2025 500AE - All rights reserved',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        const SizedBox(height: 20),
        _buildSocialIcons(),
        const SizedBox(height: 20),
      ],
    );
  }

  /// **Tạo Biểu Tượng Mạng Xã Hội**
  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIconButton('assets/facebook.png', () {}),
        const SizedBox(width: 20),
        _socialIconButton('assets/tiktok.png', () {}),
        const SizedBox(width: 20),
        _socialIconButton('assets/youtube.png', () {}),
      ],
    );
  }

  /// **Tạo Nút Biểu Tượng Mạng Xã Hội**
  Widget _socialIconButton(String assetPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        assetPath,
        width: 80,
        height: 80,
      ),
    );
  }
}
