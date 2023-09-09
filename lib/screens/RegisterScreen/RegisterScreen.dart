import 'dart:convert';
import 'dart:io';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/widgets/Button/Button.dart';
import 'package:ischolarship_fe_app/widgets/FloatingInput/FloatingInput.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:healthy_app_flutter/Widgets/Button/Button.dart';
// import 'package:healthy_app_flutter/Widgets/FloatingInput/FloatingInput.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import '../LoginScreen/LoginScreen.dart';
import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() {
    return _RegisterScreenState();
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  String name = '';
  String email = '';
  String password = '';
  String rePassword = '';
  String error = '';
  String success = '';

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: widthScreen,
        height: heightScreen,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Tạo tài khoản!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hãy nhập các thông tin dưới đây để tạo tài khoản mới',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingInput(
                  labelText: 'Họ và tên',
                  setInputValue: ((value) {
                    setState(() {
                      name = value;
                    });
                  }),
                  isPassword: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingInput(
                  labelText: 'Email',
                  setInputValue: ((value) {
                    setState(() {
                      email = value;
                    });
                  }),
                  isPassword: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingInput(
                  labelText: 'Mật khẩu',
                  setInputValue: ((value) {
                    setState(() {
                      password = value;
                    });
                  }),
                  isPassword: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingInput(
                  labelText: 'Nhập lại mật khẩu',
                  setInputValue: ((value) {
                    setState(() {
                      rePassword = value;
                    });
                  }),
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: error != '',
                  child: Text(
                    error,
                    style: const TextStyle(
                      color: Color(0xffd72020),
                    ),
                  ),
                ),
                Visibility(
                  visible: success != '',
                  child: Text(
                    success,
                    style: const TextStyle(
                      color: Color(0xff13c26a),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Button(
                    clickBtn: () {
                      // register();
                    },
                    textColor: Color(0xFFFFFFFF),
                    textContent: "ĐĂNG KÝ",
                    backgroundColor: Color(0xFF1f0ec7),
                    borderColor: Color(0xFF1f0ec7),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Bạn đã có tài khoản?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff76727a),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        "Đăng nhập",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff76727a),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
