import 'package:flutter/material.dart';

import '../Widget/footer.dart';

class DisclaimerScreen extends StatelessWidget {
  const DisclaimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Miễn Trừ Trách Nhiệm"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tiêu đề lớn
            Text(
              "Miễn Trừ Trách Nhiệm 500AE TV - Bảo Vệ Quyền Lợi Người Dùng",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),

            // Nội dung chính
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
                        "Miễn trừ trách nhiệm là tập hợp các quy định và chính sách liên quan đến quyền hạn cũng như nghĩa vụ của người dùng. "
                        "Để giúp bạn hiểu rõ hơn, bài viết sau sẽ phân tích các điểm mấu chốt để hội viên sử dụng dịch vụ của ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "một cách hiệu quả và an toàn.\n\n",
                  ),

                  // Chính sách miễn trừ trách nhiệm
                  TextSpan(
                    text:
                        "Chính sách miễn trừ trách nhiệm đóng vai trò quan trọng trong việc bảo vệ quyền lợi của cả người dùng và nhà cung cấp dịch vụ. "
                        "Nó giúp xác định rõ ràng các giới hạn trách nhiệm của ",
                  ),
                  TextSpan(
                    text: "500AE TV ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "trong quá trình cung cấp dịch vụ, đồng thời hướng dẫn người dùng sử dụng nền tảng đúng cách, tránh rủi ro không đáng có.",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Nội dung bổ sung về miễn trừ trách nhiệm
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
            "Khi sử dụng dịch vụ của chúng tôi, bạn cần hiểu rằng các quy định miễn trừ trách nhiệm không nhằm mục đích hạn chế quyền lợi của bạn, "
            "mà là để đảm bảo sự minh bạch, công bằng và hiệu quả trong các tình huống phát sinh. "
            "Những quy định này cũng được xây dựng dựa trên các tiêu chuẩn pháp lý và nguyên tắc đạo đức để bảo vệ lợi ích chung.\n\n",
      ),

      // Khuyến khích đọc điều khoản
      TextSpan(
        text:
            "Chúng tôi khuyến khích bạn dành thời gian đọc kỹ các điều khoản và chính sách miễn trừ trách nhiệm trước khi sử dụng dịch vụ. "
            "Điều này sẽ giúp bạn nắm bắt được thông tin cần thiết, hiểu rõ quyền lợi và trách nhiệm của mình, từ đó tận dụng tối đa các tiện ích mà ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "mang lại.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Nội dung liên hệ hỗ trợ
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
            "Nếu bạn có bất kỳ câu hỏi hoặc cần giải thích thêm về các quy định này, đội ngũ hỗ trợ khách hàng của chúng tôi luôn sẵn sàng giúp đỡ. "
            "Hãy liên hệ với chúng tôi qua email, hotline, hoặc các kênh hỗ trợ khác để nhận được sự tư vấn chi tiết.",
      ),
    ],
  ),
),
const SizedBox(height: 30),

// Hình ảnh minh họa
ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset(
    "assets/mientru1.png", // Đảm bảo bạn có ảnh này trong thư mục assets
    fit: BoxFit.cover,
  ),
),
const SizedBox(height: 30),

// Tiêu đề "Tại sao cần có nội dung miễn trừ trách nhiệm?"
Text(
  "Tại sao cần có nội dung miễn trừ trách nhiệm?",
  style: const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 30),
// Nội dung bổ sung về miễn trừ trách nhiệm
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
            "Chính sách miễn trừ trách nhiệm được xem như một \"điều khoản bảo vệ\" trong mối quan hệ giữa nhà cung cấp dịch vụ và người dùng. "
            "Tại ",
      ),
      TextSpan(
        text: "500AE TV, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "chúng tôi hiểu rằng không có nền tảng nào hoàn hảo, và không có thông tin nào luôn đúng trong mọi hoàn cảnh. "
            "Vì vậy, việc quy định rõ ràng trách nhiệm và quyền lợi của hai bên là rất cần thiết.\n\n",
      ),

      // Định hướng người dùng thông minh
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "không chỉ cung cấp thông tin thể thao mà còn định hướng người dùng trở thành những khán giả thông minh, "
            "biết cân nhắc và kiểm tra nội dung trước khi sử dụng. "
            "Việc hiểu rõ các điều khoản miễn trừ trách nhiệm sẽ giúp người dùng tránh những hiểu lầm không đáng có và sử dụng dịch vụ một cách hiệu quả hơn.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Nội dung bổ sung về miễn trừ trách nhiệm
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
            "Mục tiêu của chúng tôi là mang lại trải nghiệm tốt nhất cho người dùng, nhưng đồng thời cũng cần đảm bảo rằng "
            "các giới hạn về trách nhiệm được xác định rõ ràng. Điều này giúp tránh được các tình huống tranh chấp, "
            "bảo vệ quyền lợi của cả hai bên, và xây dựng một môi trường sử dụng dịch vụ minh bạch, đáng tin cậy.\n\n",
      ),

      // Chính sách miễn trừ giúp nhận thức về thay đổi
      TextSpan(
        text:
            "Ngoài ra, chính sách miễn trừ trách nhiệm còn giúp người dùng nhận thức được rằng các thông tin và dịch vụ trên nền tảng "
            "có thể thay đổi hoặc bị ảnh hưởng bởi các yếu tố khách quan như lỗi kỹ thuật, sự cố mạng, hoặc các nguồn dữ liệu từ bên thứ ba. "
            "Việc hiểu và chấp nhận những giới hạn này là một phần quan trọng trong việc sử dụng dịch vụ một cách có trách nhiệm.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Nội dung cam kết cải thiện dịch vụ
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
            "Chúng tôi cam kết luôn nỗ lực cải thiện chất lượng dịch vụ và thông tin cung cấp, "
            "nhưng cũng khuyến khích người dùng luôn kiểm tra và đối chiếu thông tin từ nhiều nguồn khác nhau "
            "để đảm bảo tính chính xác và an toàn. Điều này không chỉ giúp bạn tối ưu hóa trải nghiệm "
            "mà còn góp phần xây dựng cộng đồng người dùng văn minh và thông thái.",
      ),
    ],
  ),
),
const SizedBox(height: 30),

// Hình ảnh minh họa
ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset(
    "assets/mientru2.png", // Đảm bảo ảnh nằm trong thư mục assets
    fit: BoxFit.cover,
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Chính sách miễn trừ trách nhiệm của 500AE TV",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  ),
),
const SizedBox(height: 20),

// Danh sách miễn trừ trách nhiệm
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      // Trách nhiệm của người dùng
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Trách nhiệm của người dùng: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Khi sử dụng thông tin từ ",
      ),
      TextSpan(
        text: "500AE TV, ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "bạn cần tự chịu trách nhiệm với kết quả. Không nên phụ thuộc hoàn toàn vào một nguồn duy nhất.\n\n",
      ),

      // Miễn trừ trách nhiệm về nội dung
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Miễn trừ trách nhiệm về nội dung: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Toàn bộ nội dung trên ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "chỉ mang tính chất tham khảo. Chúng tôi không chịu trách nhiệm với mọi thiệt hại phát sinh từ việc sử dụng thông tin mà không kiểm tra, đối chiếu.\n\n",
      ),

      // Miễn trừ trách nhiệm về lỗi kỹ thuật
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Miễn trừ trách nhiệm về lỗi kỹ thuật: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Các sự cố như kết nối internet gián đoạn hoặc lỗi thiết bị cá nhân là những vấn đề ngoài khả năng kiểm soát của chúng tôi.\n\n",
      ),

      // Miễn trừ trách nhiệm với bên thứ ba
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Miễn trừ trách nhiệm với bên thứ ba: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "không kiểm soát và không chịu trách nhiệm về nội dung hoặc tính bảo mật của các trang web bên thứ ba.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Tiêu đề lớn
Text(
  "Điều chỉnh nội dung miễn trừ trách nhiệm",
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
            "giữ quyền cập nhật hoặc thay đổi nội dung chính sách miễn trừ trách nhiệm bất cứ lúc nào "
            "để phù hợp với bối cảnh pháp lý hoặc công nghệ mới. "
            "Người dùng nên thường xuyên kiểm tra các cập nhật để không bỏ lỡ những thay đổi quan trọng.\n\n",
      ),

      // Chính sách miễn trừ trách nhiệm
      TextSpan(
        text:
            "Chính sách miễn trừ trách nhiệm của chúng tôi nhằm đảm bảo rằng các thông tin, dịch vụ, và nội dung "
            "được cung cấp trên nền tảng đều tuân thủ các quy định pháp luật hiện hành và mang lại trải nghiệm tốt nhất cho người dùng. "
            "Tuy nhiên, chúng tôi không chịu trách nhiệm trong các trường hợp sau:",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Danh sách các trường hợp miễn trừ trách nhiệm
RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      height: 1.5,
    ),
    children: [
      // Sự cố kỹ thuật
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Sự cố kỹ thuật: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Các lỗi gián đoạn dịch vụ do các yếu tố ngoài tầm kiểm soát của chúng tôi, "
            "chẳng hạn như sự cố đường truyền mạng, lỗi máy chủ của bên thứ ba, hoặc các vấn đề liên quan đến thiết bị của người dùng.\n\n",
      ),

      // Nội dung bên thứ ba
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Nội dung bên thứ ba: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Một số nội dung hoặc liên kết trên nền tảng của ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "có thể được cung cấp bởi bên thứ ba. Chúng tôi không chịu trách nhiệm về tính chính xác, độ tin cậy, "
            "hoặc bất kỳ thiệt hại nào phát sinh từ việc sử dụng các nội dung này.\n\n",
      ),

      // Hành vi người dùng
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Hành vi người dùng: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Chúng tôi không chịu trách nhiệm về bất kỳ hành vi vi phạm nào của người dùng, "
            "bao gồm việc chia sẻ tài khoản trái phép, sử dụng dịch vụ không đúng mục đích, hoặc vi phạm các quy định pháp luật.\n\n",
      ),

      // Các yếu tố bất khả kháng
      TextSpan(
        text: "•  ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "Các yếu tố bất khả kháng: ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "Những sự kiện ngoài ý muốn như thiên tai, chiến tranh, hoặc các tình huống bất khả kháng khác có thể ảnh hưởng đến hoạt động của dịch vụ.",
      ),
    ],
  ),
),
const SizedBox(height: 30),
// Nội dung khuyến nghị đọc kỹ chính sách
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
            "Chúng tôi khuyến nghị người dùng đọc kỹ và hiểu rõ các chính sách miễn trừ trách nhiệm trước khi sử dụng dịch vụ. "
            "Việc tiếp tục sử dụng nền tảng của ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "đồng nghĩa với việc bạn đồng ý với các điều khoản và chính sách này.\n\n",
      ),

      // Hỗ trợ giải đáp thắc mắc
      TextSpan(
        text:
            "Nếu có bất kỳ câu hỏi hoặc thắc mắc nào liên quan đến chính sách miễn trừ trách nhiệm, "
            "vui lòng liên hệ với chúng tôi qua các kênh hỗ trợ để được giải đáp chi tiết.",
      ),
    ],
  ),
),
FooterScreen(),
          ],
        ),
      ),
    );
  }
}