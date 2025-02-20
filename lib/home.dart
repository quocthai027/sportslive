import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Widget/bestnc.dart';
import 'Widget/blv.dart';
import 'Widget/dinhcao.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 final List<Map<String, String>> commentators = [
    {"name": "BOT 500AETV", "followers": "2", "image": "assets/doibong.png"},
    {"name": "Omamak", "followers": "2", "image": "assets/doibong.png"},
    {"name": "BLV BIGBOY", "followers": "1", "image": "assets/doibong.png"},
    {"name": "BLV ĐOM Đ...", "followers": "1", "image": "assets/doibong.png"},
    {"name": "BLV BÁNH B...", "followers": "1", "image": "assets/doibong.png"},
    {"name": "BLV SONG NHI", "followers": "3", "image": "assets/doibong.png"},
    {"name": "BLV ĐOM Đ...", "followers": "1", "image": "assets/doibong.png"},
    {"name": "BLV BÁNH B...", "followers": "1", "image": "assets/doibong.png"},
    {"name": "BLV SONG NHI", "followers": "3", "image": "assets/doibong.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Gán key để mở Drawer
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 30), // Thay logo của bạn
            const Spacer(),
            ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Bo góc (có thể chỉnh)
      side: BorderSide(color: Colors.orange, width: 2), // Viền màu cam
    ),
  ),
  child: const Text(
    "Đăng ký",
    style: TextStyle(color: Colors.orange),
  ),
),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("Đăng nhập", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer(); // Mở Drawer đúng cách
          },
        ),
      ),
      drawer: buildDrawer(context), // Drawer menu
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Video
            SizedBox(
  width: double.infinity, // Chiều rộng toàn màn hình
  child: Image.asset("assets/banner_home.gif", fit: BoxFit.cover),
),


            Container(
              height: 200,
              color: Colors.grey[800], // Placeholder video
              child: const Center(
                child: Icon(Icons.play_circle_outline, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            // Ưu đãi đặc biệt
         //   CategoryScreen(),
            buildBanner("🔥 ƯU ĐÃI ĐẶC BIỆT"),
            buildPromoSlider(),
            // Trận đấu cực hot
            buildBanner("🔥 TRẬN ĐẤU CỰC HOT"),
            buildMatchSlider(),
             BettingListWidget(),
             FeaturedCommentatorsWidget(commentators: commentators),
            
          ],
        ),
      ),
    );
  }

  // Drawer menu
  Widget buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black),
            child: Image.asset('assets/logo.png'), // Logo của bạn
          ),
          ...["Trang Chủ", "Lịch Thi Đấu", "Highlight", "Khuyến Mãi", "Ứng Tuyển BLV", "Góp Ý", "Tải App"]
              .map((item) => ListTile(
                    title: Text(item, style: const TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      print("Chọn: $item");
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }

  // Widget banner tiêu đề
  Widget buildBanner(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

   // Slider khuyến mãi
  Widget buildPromoSlider() {
    final List<String> promoImages = [
      "assets/banner_promotion.png",
      "assets/banner_promotion.png",
      "assets/banner_promotion.png",
    ];

    return CarouselSlider(
  options: CarouselOptions(
    height: 200,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    enlargeCenterPage: true,
    viewportFraction: 1.0,
  ),
  items: promoImages.map((imgPath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.orange.shade400, Colors.orange.shade800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
    color: Colors.black.withOpacity(1), // Màu bóng
    offset: Offset(0, 0), // Không dịch chuyển, bóng lan đều xung quanh
  ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(imgPath, fit: BoxFit.cover, width: double.infinity),
      ),
    );
  }).toList(),
);

  }
// Slider trận đấu

Widget buildMatchSlider() {
  final List<Map<String, dynamic>> matches = [
    {
      "league": "Saudi League",
      "status": "Sắp diễn ra",
      "team1": "assets/doibong.png",
      "team2": "assets/doibong.png",
      "team1_name": "Al Ahli",
      "team2_name": "Al Nassr",
      "time": "00:30 - 2025-02-14",
      "commentator": "BLV YAXUA",
      "avatar": "assets/doibong.png"
    },
  ];

  return CarouselSlider(
    options: CarouselOptions(
      height: 270, // Tăng nhẹ chiều cao để vừa các thành phần
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 4),
      enlargeCenterPage: true,
      viewportFraction: 1.0,
    ),
    items: matches.map((match) {
      return SingleChildScrollView(
        child: Container(
          
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Color(0xFF1A1A1A), // Màu nền đen tối
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[700]!),
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Thanh "Sắp diễn ra"
         Row(
        children: [
          Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top:10),
          child: Container(
         //   color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width:30 ),
            Image.asset(
              'assets/giaidau.jpeg',
              width: 20,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 5),
            Expanded(  // 🌟 Bọc Text để giới hạn chiều rộng
              child: Text(
                "Sắp diễn ra Sắp diễn ra Sắp diễn ra",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis, // Hiện "..." nếu quá dài
                maxLines: 1, // Giới hạn 1 dòng
                softWrap: false, // Tránh xuống dòng
              ),
            ),
          ],
        ),
          ),
        ),
      )
      ,
          Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom:15),
          child: Container(
          //  color:Colors.red,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/blue.png',
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Sắp diễn ra",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
          ),
          Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top:10),
          child: Container(
           // color:Colors.red,
            child: 
             
                // SizedBox(height: 15), // Chỉ đẩy xuống phần tử này
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F1015),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade600, width: 1.5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.remove_red_eye, color: Colors.grey.shade300, size: 18),
                        const SizedBox(width: 4),
                        Text(
                          '123',
                          style: TextStyle(color: Colors.grey.shade300, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              
            
          ),
        ),
          ),
        ],
      )
      ,
      
      
              SizedBox(height: 8),
              // Logo đội bóng + VS + Logo đội bóng
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(match["team1"], height: 50),
                      SizedBox(height: 4),
                      Text(match["team1_name"], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/vs.png', width: 50, height: 50),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(match["team2"], height: 50),
                      SizedBox(height: 4),
                      Text(match["team2_name"], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              
              Center(
                child: Text(match["time"], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              Divider(color: Color.fromARGB(255, 56, 167, 161), thickness: 2,),
              // Bình luận viên
              Padding(
                padding: const EdgeInsets.only(bottom:10),
                child: Container(
                  child: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                 
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [ 
                  
                      //  SizedBox(height:6),
                        Container(
        padding: EdgeInsets.all(3), // Độ dày viền
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange, width: 1), // Viền màu cam
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(match["avatar"]),
          radius: 16, // Tăng kích thước ảnh
        ),
      ),
      
                        SizedBox(height: 4),
                        Text(match["commentator"], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset('assets/live.gif', width: 70, height: 70),
                      ),
                    ],
                  ),
                ),
              ),
             
            ],
          ),
        ),
      );
      
    }).toList(),
  );
}
 
}
