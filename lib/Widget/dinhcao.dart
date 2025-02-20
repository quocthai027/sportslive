import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  ScrollController _scrollController = ScrollController();

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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "500AE TV - TRANG BÓNG ĐÁ ĐỈNH CAO",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        centerTitle: false,
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          // Nếu người dùng cuộn đến cuối màn hình, tiếp tục cho phép cuộn xuống phần dưới
          if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
            print("Cuộn hết nội dung hiển thị, tiếp tục xuống widget phía dưới");
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thanh bên trái với danh mục
                Stack(
                  children: [
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
                            _scrollController.jumpTo(0);
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
                  ],
                ),
                SizedBox(height: 20),
                
                // Nội dung chính
                // Nội dung chính với khả năng cuộn trong vùng giới hạn
SizedBox(
  height: 200, // Giới hạn chiều cao nội dung
  child: NotificationListener<ScrollNotification>(
    onNotification: (ScrollNotification notification) {
      if (notification.metrics.atEdge) {
        if (notification.metrics.pixels > 0) {
          // Nếu cuộn xuống hết, tiếp tục cuộn xuống phần nội dung tiếp theo
          _scrollController.animateTo(
            _scrollController.position.pixels + 50,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        } else {
          // Nếu cuộn lên đầu, tiếp tục cuộn lên phần nội dung trước đó
          _scrollController.animateTo(
            _scrollController.position.pixels - 50,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      }
      return false;
    },
    child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 176, 15, 15).withOpacity(0.2),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          menuItems[selectedIndex]["content"]!,
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
      ),
    ),
  ),
),

                SizedBox(height: 20),

                // PHẦN WIDGET PHÍA DƯỚI
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nội dung phía dưới",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Đây là phần tiếp theo nằm trong Column.\n\n"
                        "Người dùng có thể tiếp tục cuộn xuống để xem thông tin khác mà không bị khựng lại ở phần hiển thị nội dung phía trên.",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Widget khác phía dưới nữa
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Thông tin bổ sung hoặc quảng cáo",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                // PHẦN WIDGET PHÍA DƯỚI
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nội dung phía dưới",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Đây là phần tiếp theo nằm trong Column.\n\n"
                        "Người dùng có thể tiếp tục cuộn xuống để xem thông tin khác mà không bị khựng lại ở phần hiển thị nội dung phía trên.",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),// PHẦN WIDGET PHÍA DƯỚI
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nội dung phía dưới",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Đây là phần tiếp theo nằm trong Column.\n\n"
                        "Người dùng có thể tiếp tục cuộn xuống để xem thông tin khác mà không bị khựng lại ở phần hiển thị nội dung phía trên.",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),// PHẦN WIDGET PHÍA DƯỚI
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nội dung phía dưới",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Đây là phần tiếp theo nằm trong Column.\n\n"
                        "Người dùng có thể tiếp tục cuộn xuống để xem thông tin khác mà không bị khựng lại ở phần hiển thị nội dung phía trên.",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}