import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextFocus;

  const UsernameField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.focusNode,
    required this.nextFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: TextInputType.text, // Nhập tài khoản dạng text
          textInputAction: TextInputAction.next, // Hiển thị nút "Next"
          onEditingComplete: () => FocusScope.of(context).requestFocus(nextFocus), // Chuyển focus
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey, width: 2),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            prefixIcon: const Icon(Icons.person, color: Colors.grey), // Icon tài khoản
          ),
        ),
      ],
    );
  }
}
