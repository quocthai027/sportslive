import 'package:flutter/material.dart';

class ContentSection extends StatefulWidget {
  @override
  _ContentSectionState createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  int selectedIndex = 0;

  final List<Map<String, String>> menuItems = [
    {
      "title": "500AE TV có gì đặc biệt?",
      "content": "500AE TV là nền tảng phát sóng bóng đá hàng đầu tại Việt Nam, cung cấp dịch vụ xem trực tuyến miễn phí...\n\n"
          "Ngoài ra, nền tảng này còn hỗ trợ nhiều thiết bị như điện thoại, máy tính bảng và Smart TV, giúp người dùng trải nghiệm tốt nhất ở mọi nơi.\n\n"
          "Bên cạnh đó, 500AE TV cam kết không giật lag, đảm bảo chất lượng truyền tải ổn định ngay cả khi số lượng người xem tăng đột biến...\n\n"
          "Nếu bạn là một tín đồ bóng đá, 500AE TV chính là lựa chọn lý tưởng."
    },
    {
      "title": "Mục tiêu phát triển của 500AE TV",
      "content": "Ngay từ khi thành lập, 500AE TV đã đặt ra sứ mệnh trở thành nền tảng phát sóng bóng đá hàng đầu tại Việt Nam...\n\n"
          "Chúng tôi liên tục nâng cấp hệ thống, đầu tư vào công nghệ để đảm bảo trải nghiệm tốt nhất cho người dùng.\n\n"
          "Tầm nhìn dài hạn của chúng tôi là mở rộng quy mô phát sóng, không chỉ trong nước mà còn vươn ra thị trường quốc tế...\n\n"
          "500AE TV cũng hướng đến việc xây dựng cộng đồng người hâm mộ bóng đá lớn mạnh."
    },
    {
      "title": "Kênh bóng đá trực tuyến hàng đầu",
      "content": "500AE TV là địa chỉ tin cậy cho người hâm mộ bóng đá, cung cấp các trận đấu từ Ngoại Hạng Anh, La Liga, Champions League...\n\n"
          "Không chỉ phát sóng trực tiếp, chúng tôi còn cung cấp video highlight sau trận, thống kê chi tiết và các bài phân tích chuyên sâu.\n\n"
          "Ngoài ra, nền tảng còn có giao diện dễ sử dụng, chỉ với một vài thao tác đơn giản, người dùng có thể tìm kiếm trận đấu yêu thích."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        // Danh sách menu
        Stack(
          children:[
            Positioned.fill(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 6,
                    color: Colors.white,
                  ),
                ),
              ),
            Column(
            children: List.generate(menuItems.length, (index) {
              bool isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Row(
                  children: [
                    Container(
                      width: 6,
                      height: 40,
                      color: isSelected ? Colors.orange : Colors.transparent,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          menuItems[index]["title"]!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.orange : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          ] 
        ),

        SizedBox(height: 20),

        // Nội dung hiển thị của menu
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            menuItems[selectedIndex]["content"]!,
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
        ),
      ],
    );
  }
}