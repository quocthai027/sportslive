import 'package:flutter/material.dart';

import '../Widget/footer.dart';

class CopyrightPolicyScreen extends StatelessWidget {
  const CopyrightPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Chính Sách Bản Quyền"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  children: [
                    // Tiêu đề
                    TextSpan(
                      text: "Chính sách bản quyền tại 500AE TV\n\n",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    // Nội dung chính sách
                    TextSpan(
                      text: "Tại ",
                    ),
                    TextSpan(
                      text: "500AE TV, ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "chúng tôi cam kết tôn trọng và bảo vệ quyền sở hữu trí tuệ của tất cả các bên liên quan. "
                          "Nội dung trên website, bao gồm nhưng không giới hạn ở bài viết, hình ảnh, video, đồ họa, "
                          "logo và các tài liệu khác, đều thuộc quyền sở hữu của ",
                    ),
                    TextSpan(
                      text: "500AE TV ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "hoặc các bên thứ ba đã cấp phép sử dụng. Việc sao chép, phân phối hoặc sử dụng bất kỳ nội dung nào "
                          "mà không có sự cho phép rõ ràng từ chúng tôi đều bị nghiêm cấm.\n",
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
                  TextSpan(
                    text:
                        "Chính sách bản quyền được xây dựng nhằm đảm bảo rằng mọi nội dung trên nền tảng đều được sử dụng một cách hợp pháp và minh bạch. ",
                  ),
                  TextSpan(
                    text:
                        "Đồng thời, chúng tôi cũng thúc đẩy việc xây dựng một cộng đồng sử dụng nội dung trực tuyến có trách nhiệm, ",
                  ),
                  TextSpan(
                    text:
                        "tôn trọng quyền sở hữu trí tuệ của tất cả các bên.\n\n",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Hình ảnh minh họa
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/banquyen1.png", // Thay thế bằng đường dẫn ảnh thực tế
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            Container(
  alignment: Alignment.centerLeft, // Căn trái văn bản
  child: Text(
    "Quyền sở hữu nội dung trên 500AE TV",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.orange,
    ),
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
      // Đoạn 1: Giới thiệu chính sách
      TextSpan(
        text: "Tất cả nội dung do ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "cung cấp đều được bảo vệ bởi luật bản quyền và các quy định pháp lý liên quan. "
            "Chúng tôi giữ toàn quyền đối với việc chỉnh sửa, cập nhật hoặc gỡ bỏ nội dung trên nền tảng của mình mà không cần thông báo trước.\n\n",
      ),

      // Đoạn 2: Quy định sử dụng nội dung
      TextSpan(
        text: "Người dùng được phép truy cập và sử dụng nội dung trên website chỉ với mục đích cá nhân, phi thương mại. "
            "Mọi hành vi sao chép, chỉnh sửa, phân phối hoặc khai thác nội dung vì mục đích thương mại mà không có sự đồng ý bằng văn bản từ ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: "đều bị coi là vi phạm bản quyền và có thể bị xử lý theo quy định của pháp luật.\n\n",
      ),

      // Đoạn 3: Tiêu đề "Nội dung từ bên thứ ba"
      TextSpan(
        text: "Nội dung từ bên thứ ba",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.orange,
        ),
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
      TextSpan(
        text:
            "Một số nội dung trên website của chúng tôi có thể bao gồm tài liệu, hình ảnh, hoặc video được cung cấp bởi các bên thứ ba. ",
      ),
      TextSpan(
        text:
            "Chúng tôi luôn đảm bảo rằng các nội dung này đã được sử dụng hợp pháp và tuân thủ các quy định về bản quyền. ",
      ),
      TextSpan(
        text:
            "Tuy nhiên, nếu bạn phát hiện bất kỳ nội dung nào vi phạm quyền sở hữu trí tuệ, vui lòng liên hệ với chúng tôi để được xử lý kịp thời.\n\n",
      ),

      TextSpan(
        text:
            "Chúng tôi luôn trân trọng và tôn trọng các đóng góp từ cộng đồng. ",
      ),
      TextSpan(
        text:
            "Nếu bạn là chủ sở hữu của một nội dung nào đó và nhận thấy nội dung đó đang được sử dụng trên ",
      ),
      TextSpan(
        text: "500AE TV ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text:
            "mà chưa có sự đồng ý, hãy liên hệ ngay với chúng tôi qua email hoặc hotline để chúng tôi có thể giải quyết nhanh chóng và phù hợp.",
      ),
    ],
  ),
),
 ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/banquyen2.png", // Thay thế bằng đường dẫn ảnh thực tế
        fit: BoxFit.cover,
      ),
    ),
    

    // Nội dung hướng dẫn
    RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          height: 1.5,
        ),
        children: [
          TextSpan(
        text: "Hướng dẫn báo cáo vi phạm bản quyền\n",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.orange,
        ),
      ),
          TextSpan(
            text:
                "Nếu bạn phát hiện bất kỳ nội dung nào trên website của ",
          ),
          TextSpan(
            text: "500AE TV ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                "vi phạm bản quyền hoặc quyền sở hữu trí tuệ, hãy gửi báo cáo cho chúng tôi qua các kênh liên hệ được cung cấp. "
                "Vui lòng cung cấp đầy đủ thông tin, bao gồm:\n\n",
          ),
          TextSpan(
            text: "•  ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "Thông tin chi tiết về nội dung vi phạm ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "(liên kết, mô tả, v.v.).\n",
          ),
          TextSpan(
            text: "•  ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "Bằng chứng chứng minh quyền sở hữu ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "của bạn đối với nội dung đó.\n",
          ),TextSpan(
            text: "•  ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "Thông tin liên hệ của bạn để chúng ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "tôi có thể phản hồi và xử lý.",
          ),
        ],
      ),
    ),
    // Hình ảnh minh họa
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/banquyen3.png", // Thay thế bằng đường dẫn ảnh thực tế
        fit: BoxFit.cover,
      ),
    ),
    const SizedBox(height: 20),

    // Nội dung cam kết xử lý báo cáo
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
                "Chúng tôi cam kết sẽ xem xét và xử lý mọi báo cáo vi phạm bản quyền một cách nhanh chóng và công bằng.\n\n",
          ),
        ],
      ),
    ),
   

    
    

    // Nội dung cam kết bản quyền
    RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          height: 1.5,
        ),
        children: [
          TextSpan(
        text: "Cam kết của chúng tôi\n",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.orange,
        ),
      ),
          TextSpan(
            text: "500AE TV ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                "cam kết tuân thủ nghiêm ngặt các quy định về bản quyền và sở hữu trí tuệ. "
                "Chúng tôi luôn nỗ lực xây dựng một môi trường trực tuyến minh bạch, nơi mà mọi nội dung được sử dụng "
                "và chia sẻ một cách hợp pháp và có trách nhiệm.\n",
          ),
           TextSpan(
            text:
                "Nếu bạn có bất kỳ câu hỏi nào liên quan đến chính sách bản quyền hoặc cần hỗ trợ thêm,"
                "đừng ngần ngại liên hệ với chúng tôi qua email hoặc hotline. "
                "Chúng tôi luôn sẵn sàng lắng nghe và hỗ trợ bạn.",
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