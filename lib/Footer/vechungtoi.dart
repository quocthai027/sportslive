import 'package:flutter/material.dart';

import '../Widget/footer.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Tiêu đề lớn
              Text(
                "Về Chúng Tôi 500AE TV –\nKênh Thể Thao Uy Tín Hàng\nĐầu Việt Nam",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 20),
              // Nội dung đoạn văn bản
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "500AE TV ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          "là nền tảng cung cấp thông tin thể thao uy tín và chất lượng hàng đầu tại Việt Nam. "
                          "Tại đây, bạn sẽ tìm thấy các dịch vụ và sản phẩm hấp dẫn dành riêng cho fan hâm mộ bóng đá.\n\n"
                          "Nếu bạn đang tìm kiếm một địa chỉ đáng tin cậy để theo dõi các sự kiện thể thao và bóng đá hàng đầu, ",
                    ),
                    TextSpan(
                      text: "500AETV ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: "chắc chắn là lựa chọn hoàn hảo."),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Hình ảnh banner
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/vechungtoi1.png", // Thay đổi đường dẫn ảnh cho phù hợp
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              // Tiêu đề lớn
Text(
  "Khám Phá Về Chúng Tôi –\nTrang Bóng Đá Trực Tuyến 500AE",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Ra đời từ năm 2020, ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đã nhanh chóng chiếm được cảm tình của cộng đồng yêu bóng đá tại Việt Nam. "
            "Với sự tận tâm và nỗ lực không ngừng, nền tảng hiện nay đã trở thành điểm đến quen thuộc của hàng triệu người hâm mộ.\n\n",
      ),
      TextSpan(
        text:
            "Không chỉ mang đến trải nghiệm xem bóng đá trực tuyến chất lượng cao, ",
      ),
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "còn chú trọng cải thiện từng chi tiết nhỏ trong dịch vụ. "
            "Chúng tôi cam kết mang lại sự hài lòng tối đa cho người dùng, đảm bảo rằng mỗi lần truy cập, "
            "bạn sẽ nhận được những thông tin thể thao chính xác và dịch vụ đáng tin cậy.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Tầm Nhìn và Sứ Mệnh Của 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Tiêu đề phụ "Tầm Nhìn"
Text(
  "Tầm Nhìn",
  style: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),
const SizedBox(height: 10),

// Nội dung "Tầm Nhìn"
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Với định hướng phát triển mạnh mẽ, ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "không chỉ cung cấp link xem trực tiếp bóng đá mà còn hướng tới việc xây dựng một cộng đồng thể thao uy tín và bền vững. "
            "Chúng tôi không ngừng đổi mới để giữ vững vị thế là nền tảng thể thao số 1 tại Việt Nam, "
            "đồng thời từng bước mở rộng ảnh hưởng ra thị trường quốc tế.",
      ),
    ],
  ),
),
const SizedBox(height: 30),

// Tiêu đề phụ "Sứ Mệnh"
Text(
  "Sứ Mệnh",
  style: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),
const SizedBox(height: 10),

// Nội dung "Sứ Mệnh"
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Sứ mệnh của ",
      ),
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "là mang đến cho người dùng những trải nghiệm thể thao toàn diện nhất. "
            "Mỗi thông tin, dữ liệu chúng tôi cung cấp đều được chọn lọc kỹ lưỡng để đảm bảo chất lượng và độ chính xác cao nhất. "
            " Với đội ngũ tận tâm, 500AE TV luôn đặt lợi ích của người dùng lên hàng đầu."
            ,
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Giá Trị Cốt Lõi Của 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Từ những ngày đầu thành lập, ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đã xác định rõ ràng các giá trị cốt lõi và luôn nỗ lực để nâng cao chất lượng dịch vụ. "
            "Những giá trị này bao gồm:\n\n",
      ),

      // Giá trị 1: Trải Nghiệm Đẳng Cấp
      TextSpan(
        text: "Trải Nghiệm Đẳng Cấp: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Đem đến những trận đấu kịch tính, gay cấn với chất lượng hình ảnh và âm thanh vượt trội.\n\n",
      ),

      // Giá trị 2: Chính Xác Tuyệt Đối
      TextSpan(
        text: "Chính Xác Tuyệt Đối: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Toàn bộ thông tin được đăng tải trên website đều đảm bảo độ tin cậy, giúp người dùng yên tâm theo dõi.\n\n",
      ),

      // Giá trị 3: Giao Diện Thân Thiện
      TextSpan(
        text: "Giao Diện Thân Thiện: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Website được thiết kế tối ưu, khoa học để người dùng dễ dàng thao tác và tìm kiếm thông tin một cách nhanh chóng.",
      ),
    ],
  ),
),
const SizedBox(height: 30),

// Hình ảnh banner
ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset(
    "assets/vechungtoi2.png", // Thay đổi tên ảnh theo file của bạn
    fit: BoxFit.cover,
  ),
),
const SizedBox(height: 20),
// Tiêu đề lớn
Text(
  "Lịch Sử Hình Thành và Phát Triển 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "là một nền tảng thể thao trực tuyến hàng đầu được thành lập vào năm 2020. "
            "Sau hơn 4 năm hoạt động trong lĩnh vực giải trí trực tuyến, nền tảng đã khẳng định được vị thế của mình "
            "nhờ chất lượng dịch vụ vượt trội và sự tin tưởng từ người dùng.\n\n",
      ),

      TextSpan(
        text: "Theo số liệu thống kê mới nhất, ",
      ),
      TextSpan(
        text: "500AE ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đã thu hút hơn 2 triệu lượt đăng ký tài khoản, với lượng truy cập lên đến 500.000 lượt mỗi ngày. "
            "Đây là minh chứng rõ ràng cho tốc độ phát triển ấn tượng và sự yêu mến mà cộng đồng người hâm mộ dành cho nền tảng.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Các Dịch Vụ Chính Của 500AE",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "không chỉ đơn thuần là một trang xem bóng đá trực tuyến mà còn cung cấp nhiều dịch vụ đa dạng và tiện ích "
            "cho người hâm mộ thể thao. Dưới đây là những dịch vụ nổi bật:\n\n",
      ),

      // Dịch vụ 1: Trực Tiếp Bóng Đá
      TextSpan(
        text: "1. Trực Tiếp Bóng Đá\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "500AE TV tự hào là một trong những website hàng đầu Việt Nam chuyên cung cấp các trận đấu bóng đá trực tiếp "
            "từ những giải đấu hàng đầu thế giới. Dù là giải đấu quy mô lớn như Ngoại Hạng Anh, La Liga hay các giải đấu quốc nội, "
            "chỉ với một thiết bị có kết nối internet, người dùng có thể dễ dàng theo dõi mọi trận cầu yêu thích.\n\n",
      ),

      // Dịch vụ 2: Cập Nhật Thông Tin Thể Thao
      TextSpan(
        text: "2. Cập Nhật Thông Tin Thể Thao\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Bên cạnh các trận đấu trực tiếp, 500AE còn là nguồn tin thể thao đáng tin cậy. "
            "Tại đây, bạn có thể dễ dàng tra cứu mọi dữ liệu liên quan đến bóng đá, từ:\n\n",
      ),

      // Kết quả bóng đá (KQBD)
      TextSpan(
        text: "Kết quả bóng đá (KQBD): ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Cập nhật nhanh chóng và chính xác kết quả của các trận đấu.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Bảng xếp hạng (BXH)
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Bảng xếp hạng (BXH): ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Tổng hợp thứ hạng các đội bóng một cách chi tiết.\n\n",
      ),

      // Lịch thi đấu
      TextSpan(
        text: "Lịch thi đấu: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Theo dõi đầy đủ lịch trình của các giải đấu lớn nhỏ trên thế giới.\n\n",
      ),

      // Tin tức bên lề
      TextSpan(
        text: "Tin tức bên lề: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Khám phá các câu chuyện thú vị xoay quanh sân cỏ và các cầu thủ.\n\n",
      ),

      // Cộng Đồng Bóng Đá
      TextSpan(
        text: "3. Cộng Đồng Bóng Đá\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Nhằm tạo ra không gian giao lưu và chia sẻ giữa những người hâm mộ, ",
      ),
      TextSpan(
        text: "500AE ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đã thiết lập một cộng đồng trực tuyến sôi động. Đây là nơi mà người chơi có thể tham gia thảo luận, trao đổi ý kiến và bày tỏ cảm xúc về các trận đấu. "
            "Với số lượng thành viên đông đảo và hoạt động thường xuyên, cộng đồng này chính là điểm đến lý tưởng cho những ai yêu thích bóng đá.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Đội Ngũ 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Để xây dựng nên một nền tảng thể thao trực tuyến chất lượng và đẳng cấp như hiện nay, ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "tự hào có sự đóng góp không ngừng nghỉ của đội ngũ chuyên gia giàu kinh nghiệm, "
            "các quản lý xuất sắc và đội ngũ bình luận viên chuyên nghiệp. Những người đứng sau thành công của nền tảng, "
            "từ CEO đến nhân viên vận hành, đều sở hữu kiến thức chuyên môn sâu rộng về lĩnh vực bóng đá. "
            "Điều này giúp ",
      ),
      TextSpan(
        text: "500AE ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "xây dựng được lòng tin vững chắc từ cộng đồng người dùng.\n\n",
      ),

      // Đội ngũ bình luận viên
      TextSpan(
        text: "Đặc biệt, đội ngũ bình luận viên của ",
      ),
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "bao gồm những gương mặt nổi tiếng trong ngành thể thao. Họ đã tham gia bình luận, dự đoán kết quả, "
            "và soi kèo cho rất nhiều trận đấu lớn nhỏ, mang đến cho người dùng những phân tích chất lượng và hấp dẫn."
            "Chính nhờ sự chuyên nghiệp và tận tâm này, "
            ,
      ),
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "cam kết rằng mọi dịch vụ và sản phẩm mà nền tảng cung cấp luôn đạt tiêu chuẩn quốc tế."
            ,
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Cam Kết Với Người Dùng",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "luôn đặt trách nhiệm lên hàng đầu, đảm bảo người dùng nhận được trải nghiệm an toàn và đáng tin cậy nhất. "
            "Mọi dữ liệu cá nhân được thu thập và lưu trữ bằng các công nghệ bảo mật tiên tiến nhất thế giới.\n\n",
      ),

      // Mã hóa dữ liệu 2 chiều
      TextSpan(
        text: "Mã hóa dữ liệu 2 chiều (SSL 128 bit): ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Công nghệ này giúp bảo vệ thông tin từ đầu đến cuối, ngăn chặn mọi sự truy cập trái phép.\n\n",
      ),

      // Hệ thống tường lửa 5 lớp
      TextSpan(
        text: "Hệ thống tường lửa 5 lớp: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Tăng cường bảo mật, đảm bảo không để xảy ra bất kỳ sự rò rỉ dữ liệu nào ra bên ngoài.\n\n",
      ),

      // Lắng nghe ý kiến người dùng
      TextSpan(
        text: "Ngoài ra, ",
      ),
      TextSpan(
        text: "500AE ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "luôn lắng nghe ý kiến của người dùng để cải thiện dịch vụ. Sự hài lòng của người dùng chính là động lực để nền tảng "
            "không ngừng nâng cao chất lượng, xây dựng một hệ thống tiện ích tốt nhất và mang đến những trải nghiệm vượt trội.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Cơ Hội Hợp Tác Cùng 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "luôn mang đến những chương trình hợp tác kinh doanh hấp dẫn, giúp mở rộng mạng lưới và kết nối với những đối tác tiềm năng. "
            "Đây là cơ hội để các cá nhân và doanh nghiệp cùng đồng hành, quảng bá thương hiệu và phát triển nền tảng thể thao trực tuyến hàng đầu này.\n\n",
      ),

      // Khi hợp tác cùng 500AE
      TextSpan(
        text: "Khi hợp tác cùng ",
      ),
      TextSpan(
        text: "500AE, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "bạn sẽ tham gia vào một hệ sinh thái thể thao chuyên nghiệp và có cơ hội nhận được nhiều lợi ích giá trị. "
            "Đội ngũ chúng tôi luôn đồng hành và hỗ trợ đối tác trong các chiến lược phát triển thị trường, đảm bảo cả hai bên "
            "đều đạt được những thành công vượt mong đợi.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Lợi Ích Khi Hợp Tác Cùng 500AE",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Khi trở thành đối tác của ",
      ),
      TextSpan(
        text: "500AETV, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "bạn sẽ nhận được nhiều phần thưởng hấp dẫn và giá trị, bao gồm:\n\n",
      ),

      // Hoa hồng thưởng
      TextSpan(
        text: "Hoa hồng thưởng: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Những khoản tiền thưởng từ các chiến dịch quảng bá hiệu quả.\n\n",
      ),

      // Phần quà giá trị
      TextSpan(
        text: "Phần quà giá trị: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Các hiện vật giá trị cao dành riêng cho đối tác đạt được những cột mốc quan trọng.\n\n",
      ),

      // Hỗ trợ chiến lược phát triển
      TextSpan(
        text: "Hỗ trợ chiến lược phát triển: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Đội ngũ chuyên gia của 500AE TV luôn sẵn sàng cung cấp giải pháp và hỗ trợ để tối ưu hóa hiệu quả hợp tác.\n\n",
      ),

      // Điều kiện thuận lợi cho đối tác
      TextSpan(
        text: "Ngoài ra, ",
      ),
      TextSpan(
        text: "chúng tôi ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "luôn tạo điều kiện thuận lợi để đối tác dễ dàng tham gia và khai thác cơ hội từ thị trường thể thao trực tuyến đang phát triển mạnh mẽ.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Liên Hệ Ngay Hôm Nay!",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Nội dung văn bản chính
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "Nếu bạn quan tâm đến việc hợp tác với ",
      ),
      TextSpan(
        text: "500AE, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đừng chần chừ liên hệ ngay với đội ngũ chăm sóc khách hàng của chúng tôi. "
            "Đội ngũ CSKH sẵn sàng hỗ trợ bạn 24/7, giúp giải đáp mọi thắc mắc và hướng dẫn chi tiết về quy trình hợp tác.\n\n",
      ),

      // Tham gia cùng 500AETV
      TextSpan(
        text: "Hãy tham gia cùng ",
      ),
      TextSpan(
        text: "500AETV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "ngay hôm nay để cùng nhau mở rộng thị trường, xây dựng thương hiệu và khai phá tiềm năng to lớn của ngành thể thao trực tuyến!\n\n",
      ),
    ],
  ),
),

// Tiêu đề "Kết Luận"
Text(
  "Kết Luận",
  style: const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 30),
// Nội dung kết luận
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "không chỉ là nền tảng xem bóng đá trực tuyến uy tín mà còn là đối tác kinh doanh đáng tin cậy cho những ai muốn tham gia vào lĩnh vực thể thao. "
            "Hy vọng qua nội dung trên, bạn đã hiểu rõ hơn về cơ hội hợp tác cùng ",
      ),
      TextSpan(
        text: "500AETV. ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Chúng tôi luôn chào đón những đối tác mới với sự hỗ trợ và đồng hành tốt nhất để cùng nhau vươn xa!",
      ),
    ],
  ),
),

FooterScreen(),
            ],
          ),
        ),
      ),
    );
  }
}