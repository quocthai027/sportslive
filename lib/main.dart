import 'package:flutter/material.dart';

import 'Widget/dinhcao.dart';
import 'Widget/password_field.dart';
import 'Widget/username_field.dart';
import 'dangky.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  bool _rememberPassword = false;
final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
               Image.network(
                  'https://cdn.vectorstock.com/i/1000v/84/29/tiktok-logo-realistic-social-media-icon-logotype-vector-46128429.jpg', 
                  height: 50,
                ),
              const SizedBox(height: 20),

              // Tiêu đề
              const Text(
                "Đăng nhập",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),

              // Mô tả
              const Text(
                "Chúc mừng trở lại. Vui lòng nhập thông tin để truy cập tài khoản",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,fontSize:20),
              ),
              SizedBox(height: 30),
                UsernameField(label: "Tài khoản",hint: "Tên tài khoản...",controller: _usernameController,focusNode: _usernameFocus,nextFocus: _passwordFocus,),
                SizedBox(height: 15),
             
             PasswordField(label: "Mật khẩu",hint: "Nhập mật khẩu...",controller: _passwordController,focusNode: _passwordFocus,isPasswordField: true),
              // Lưu mật khẩu & Quên mật khẩu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                         decoration: BoxDecoration(
    border: Border.all(color: Colors.white, width: 2), // Viền trắng
    borderRadius: BorderRadius.circular(4)), // Bo góc
                        child: Checkbox(
                          value: _rememberPassword,
                          onChanged: (value) {
                            setState(() {
                              _rememberPassword = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                        //  side: const BorderSide(color: Colors.white, width: 2), // Viền khi chưa chọn
                        ),
                      ),
                       SizedBox(width: 10),
                      const Text("Lưu mật khẩu", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Quên mật khẩu", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Button đăng nhập
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: const Text("Đăng nhập", style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),

              // Đăng ký
              RichText(
                text: TextSpan(
                  text: "Bạn chưa có tài khoản? ",
                  style: const TextStyle(color: Colors.white),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => RegisterScreen()),
);
                        },
                        child: const Text(
                          "Đăng ký ngay",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize:20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
