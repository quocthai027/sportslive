import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widget/footer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // Tiêu đề lớn
            Text(
              "Liên Hệ 500AE TV – Hỗ Trợ Nhanh Chóng và Hiệu Quả",
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
                    text: "Tại ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "chúng tôi luôn sẵn sàng lắng nghe và hỗ trợ bạn. Dù bạn có bất kỳ thắc mắc nào liên quan đến dịch vụ, "
                        "sản phẩm, hoặc gặp vấn đề kỹ thuật, đội ngũ chăm sóc khách hàng của chúng tôi luôn túc trực để giải đáp "
                        "một cách chi tiết và nhanh chóng. Hãy liên hệ với chúng tôi qua các kênh dưới đây!\n\n",
                  ),

                  TextSpan(
                    text:
                        "Chúng tôi hiểu rằng mỗi phút giây của bạn đều quý giá, đặc biệt là khi bạn đang chờ đợi để thưởng thức những trận cầu đỉnh cao. "
                        "Vì vậy, ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "cam kết mang lại dịch vụ hỗ trợ tốt nhất, với các tiêu chí:",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // TODO: Thêm các mục liên hệ (Email, Hotline, Chat)
            // Danh sách tiêu chí hỗ trợ khách hàng
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      // Phản hồi nhanh chóng
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Phản hồi nhanh chóng: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Đội ngũ của chúng tôi luôn cố gắng trả lời mọi yêu cầu trong thời gian ngắn nhất, "
            "thường chỉ trong vòng vài phút qua chat trực tuyến hoặc hotline.\n\n",
      ),

      // Hỗ trợ 24/7
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Hỗ trợ 24/7: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Dù bạn ở bất kỳ đâu hay bất kỳ thời điểm nào, chúng tôi luôn sẵn sàng hỗ trợ bạn, "
            "kể cả vào các ngày lễ hoặc cuối tuần.\n\n",
      ),

      // Chuyên nghiệp và tận tâm
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Chuyên nghiệp và tận tâm: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Đội ngũ hỗ trợ của chúng tôi được đào tạo bài bản để giải quyết mọi vấn đề một cách hiệu quả và thân thiện, "
            "đảm bảo bạn luôn cảm thấy hài lòng.\n\n",
      ),

      // Đa dạng kênh liên lạc
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Đa dạng kênh liên lạc: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Bạn có thể chọn cách liên hệ phù hợp nhất với mình, từ chat trực tuyến, email, hotline, "
            "đến mạng xã hội hoặc ứng dụng di động.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Nội dung giới thiệu liên hệ
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      TextSpan(
        text:
            "Đừng ngần ngại liên hệ với chúng tôi khi cần hỗ trợ. Tại ",
      ),
      TextSpan(
        text: "500AE TV, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "bạn không chỉ là khách hàng mà còn là một phần quan trọng trong cộng đồng của chúng tôi. "
            "Chúng tôi luôn nỗ lực để mang đến cho bạn trải nghiệm tốt nhất, không chỉ trong việc xem bóng đá "
            "mà còn trong mọi dịch vụ mà chúng tôi cung cấp.\n\n",
      ),

      TextSpan(
        text: "Hãy để ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "đồng hành cùng bạn trên hành trình tận hưởng những khoảnh khắc bóng đá tuyệt vời nhất. "
            "Mọi thắc mắc hoặc yêu cầu hỗ trợ, hãy liên hệ ngay với chúng tôi. Chúng tôi luôn sẵn sàng giúp đỡ bạn!\n\n",
      ),
    ],
  ),
),



// Hình ảnh nút liên hệ
GestureDetector(
  onTap: () {
    // TODO: Thêm chức năng điều hướng đến trang liên hệ hoặc chat hỗ trợ
  },
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      "assets/lienhe1.png", // Đảm bảo ảnh này có trong thư mục assets
      fit: BoxFit.cover,
    ),
  ),
),
const SizedBox(height: 30),
Text(
              "Thông Tin Liên Hệ Chính Thức",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),

            // Email liên hệ
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  const TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text: "Email: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () async {
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'support@500aetv.com',
                        );
                        if (await canLaunchUrl(emailLaunchUri)) {
                          await launchUrl(emailLaunchUri);
                        }
                      },
                      child: const Text(
                        "support@500aetv.com",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(
                    text: " – Phù hợp để gửi báo cáo sự cố, tài liệu hoặc hình ảnh minh họa.\n\n",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Hình ảnh liên hệ
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/lienhe2.png", // Đảm bảo ảnh này có trong thư mục assets
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            // Tiêu đề "Các Kênh Liên Hệ Trực Tuyến"
            Text(
              "Các Kênh Liên Hệ Trực Tuyến",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),

            // Nội dung giới thiệu kênh liên hệ
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "Chúng tôi cung cấp nhiều kênh liên lạc trực tuyến để bạn dễ dàng tiếp cận đội ngũ hỗ trợ. "
                        "Đội ngũ chăm sóc khách hàng của ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn thông qua các nền tảng sau:",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
             // Danh sách thông tin hỗ trợ
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  // Chat trực tuyến
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Chat trực tuyến: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Tính năng này có sẵn trên website và ứng dụng của ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "hoạt động 24/7. Chỉ cần nhấn vào biểu tượng chat ở góc dưới bên phải, bạn sẽ được kết nối "
                        "với nhân viên hỗ trợ trong vòng vài giây.\n\n",
                  ),

                  // Mạng xã hội
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Mạng xã hội: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Hãy theo dõi và liên hệ với chúng tôi qua các nền tảng như:\n\n",
                  ),

                  // Facebook
                  TextSpan(
                    text: "   •  Facebook: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nhắn tin trực tiếp qua fanpage chính thức của ",
                  ),
                  TextSpan(
                    text: "500AE TV.\n\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  // Telegram
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Telegram: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Tham gia nhóm cộng đồng hoặc nhắn tin trực tiếp đến đội ngũ hỗ trợ của chúng tôi. "
                        "Đây là kênh phù hợp để nhận thông báo mới nhất và hỗ trợ nhanh chóng.\n\n",
                  ),

                  // Ứng dụng di động
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Ứng dụng di động: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nếu bạn sử dụng ứng dụng ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "bạn có thể truy cập mục 'Hỗ Trợ' để gửi yêu cầu trực tiếp. "
                        "Ứng dụng của chúng tôi được tích hợp đầy đủ các tính năng hỗ trợ khách hàng.\n\n",
                  ),
                ],
              ),
            ),

             RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  // Diễn đàn cộng đồng
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Diễn đàn cộng đồng: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Tham gia diễn đàn của ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "để trao đổi kinh nghiệm, hỏi đáp và nhận hỗ trợ từ cộng đồng người dùng. "
                        "Đội ngũ của chúng tôi cũng thường xuyên theo dõi và trả lời trên diễn đàn.\n\n",
                  ),

                  // Email hỗ trợ
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Email hỗ trợ: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nếu bạn cần gửi tài liệu, hình ảnh hoặc báo cáo chi tiết, hãy liên hệ qua email ",
                  ),
                  TextSpan(
                    text: "support@500aetv.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text:
                        ". Chúng tôi sẽ phản hồi trong vòng 24 giờ.\n\n",
                  ),
                ],
              ),
            ),

            // Tiêu đề: Hỗ Trợ Kỹ Thuật và Sự Cố
            const Text(
              "Hỗ Trợ Kỹ Thuật và Sự Cố",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),

            // Nội dung hỗ trợ kỹ thuật
            const Text(
              "Nếu bạn gặp phải các vấn đề như giật lag, không hiển thị link xem bóng đá, hoặc không thể truy cập dịch vụ, "
              "hãy liên hệ ngay với đội ngũ hỗ trợ của chúng tôi. Chúng tôi sẽ kiểm tra kết nối, cung cấp link dự phòng hoặc "
              "hướng dẫn chi tiết để khắc phục sự cố một cách nhanh chóng.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
             // Tiêu đề chính
            const Text(
              "Một số sự cố thường gặp mà chúng tôi có thể hỗ trợ bao gồm:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),

            // Danh sách sự cố và cách khắc phục
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  // Giật lag hoặc mất kết nối
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Giật lag hoặc mất kết nối: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Đội ngũ kỹ thuật của chúng tôi sẽ kiểm tra máy chủ và đường truyền, "
                        "đồng thời cung cấp giải pháp tối ưu như sử dụng link thay thế hoặc điều chỉnh cấu hình thiết bị của bạn.\n\n",
                  ),

                  // Không hiển thị link xem
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Không hiển thị link xem: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Trong trường hợp link xem bóng đá không hiển thị hoặc bị lỗi, "
                        "chúng tôi sẽ gửi ngay link dự phòng hoặc hướng dẫn bạn cách làm mới trình duyệt để khắc phục.\n\n",
                  ),

                  // Lỗi không truy cập được website
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Lỗi không truy cập được website: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nếu bạn không thể truy cập vào website hoặc ứng dụng của ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "chúng tôi sẽ kiểm tra trạng thái hoạt động của hệ thống và cung cấp các giải pháp như đổi DNS, sử dụng VPN, "
                        "hoặc truy cập qua link phụ.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
             RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Chất lượng video không ổn định: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nếu bạn gặp vấn đề về chất lượng hình ảnh như mờ, giật hoặc không rõ nét, "
                        "hãy cho chúng tôi biết. Chúng tôi sẽ hướng dẫn bạn cách điều chỉnh độ phân giải hoặc kiểm tra tốc độ mạng của bạn.\n\n",
                  ),
                  
                  // Sự cố khác
                  TextSpan(
                    text: "•  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Sự cố khác: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Đừng ngần ngại liên hệ với chúng tôi nếu bạn gặp bất kỳ vấn đề nào khác. "
                        "Đội ngũ hỗ trợ luôn sẵn sàng lắng nghe và tìm giải pháp phù hợp nhất cho bạn.\n\n",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Đoạn mô tả cuối
            const Text(
              "Chúng tôi hiểu rằng sự cố kỹ thuật có thể làm gián đoạn trải nghiệm của bạn, "
              "đặc biệt là trong những trận đấu quan trọng. Vì vậy, đội ngũ hỗ trợ của ",
              style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            ),
            const Text(
              "500AE TV ",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Text(
              "luôn hoạt động 24/7 để đảm bảo bạn không bỏ lỡ bất kỳ khoảnh khắc nào.",
              style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            ),

             // Nội dung liên hệ
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "Hãy liên hệ với chúng tôi qua các kênh hỗ trợ như email, hotline, "
                        "hoặc chat trực tuyến để được trợ giúp ngay lập tức. "
                        "Chúng tôi cam kết mang đến cho bạn trải nghiệm xem bóng đá mượt mà và tuyệt vời nhất.\n\n",
                  ),
                ],
              ),
            ),

            // Hình ảnh liên hệ
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/lienhe3.png',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // Tiêu đề liên hệ bản quyền
            const Text(
              "Liên Hệ Về Bản Quyền và Nội Dung",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 10),

            // Nội dung bản quyền
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text:
                        "Nếu bạn có bất kỳ thắc mắc nào liên quan đến bản quyền hoặc nội dung trên ",
                  ),
                  TextSpan(
                    text: "500AE TV, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "hãy gửi email đến chúng tôi kèm theo thông tin chi tiết và file minh họa (nếu có). "
                        "Đội ngũ chuyên môn sẽ xử lý và phản hồi trong thời gian sớm nhất.",
                  ),
                ],
              ),
            ),
             const Text(
              "Chính Sách Bảo Mật Thông Tin",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                children: [
                  TextSpan(
                    text:
                        "Chúng tôi cam kết bảo mật thông tin cá nhân của bạn khi liên hệ với ",
                  ),
                  TextSpan(
                    text: "500AE TV. ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Mọi dữ liệu được thu thập chỉ sử dụng để cải thiện dịch vụ và không chia sẻ với bên thứ ba.\n\n",
                  ),
                ],
              ),
            ),

            // Thời gian hỗ trợ
            const Text(
              "Thời Gian Hỗ Trợ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                children: [
                  TextSpan(
                    text:
                        "Đội ngũ chăm sóc khách hàng của ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "luôn sẵn sàng hỗ trợ bạn 24/7. "
                        "Hotline hoạt động liên tục, kể cả sau 12 giờ đêm, "
                        "để đảm bảo bạn nhận được sự giúp đỡ kịp thời.\n\n",
                  ),
                ],
              ),
            ),

            // Liên hệ ngay
            const Text(
              "Liên Hệ Ngay Hôm Nay!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            RichText(
            
            text: const TextSpan(
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: "Đừng ngần ngại liên hệ với ",
                ),
                TextSpan(
                  text: "500AE TV ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "để được hỗ trợ tốt nhất. Chúng tôi luôn sẵn sàng đồng hành cùng bạn để mang lại trải nghiệm tuyệt vời nhất khi sử dụng dịch vụ.",
                ),
                
              ],
            ),),
            FooterScreen(),
          ],
        ),
      ),
    );
  }
}