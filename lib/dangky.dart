import 'package:flutter/material.dart';

import 'Widget/password_field.dart';
import 'Widget/phone_field.dart';
import 'Widget/username_field.dart';
import 'dangky.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();

  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Ẩn bàn phím khi nhấn ngoài
        },
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn.vectorstock.com/i/1000v/84/29/tiktok-logo-realistic-social-media-icon-logotype-vector-46128429.jpg', 
                  height: 50,
                ),
                SizedBox(height: 20),
                Text(
                  "Đăng ký tài khoản",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  "Đăng ký trải nghiệm mọi tính năng tại 500AE",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(height: 30),
                UsernameField(label: "Tài khoản",hint: "Tên tài khoản...",controller: _usernameController,focusNode: _usernameFocus,nextFocus: _passwordFocus,),
                SizedBox(height: 15),
                PasswordField(label: "Mật khẩu",hint: "Nhập mật khẩu...",controller: _passwordController,focusNode: _passwordFocus,nextFocus: _confirmPasswordFocus,isPasswordField: true),
                SizedBox(height: 15),
                PasswordField(label: "Xác nhận mật khẩu",hint: "Nhập lại mật khẩu...",controller: _confirmPasswordController,focusNode: _confirmPasswordFocus,nextFocus: _phoneFocus,isPasswordField: true),
                SizedBox(height: 15),
                PhoneNumberField(label: "Số điện thoại",hint: "Nhập số điện thoại...",controller: _phoneController,focusNode: _phoneFocus,),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                        Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => LoginApp()));
                      // Xử lý đăng ký
                    },
                    child: Text(
                      "Đăng ký",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Chuyển hướng đến màn hình đăng nhập
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Bạn đã có tài khoản? ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      children: [
                        TextSpan(
                          text: "Đăng nhập ngay",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                      ],
                    ),
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
