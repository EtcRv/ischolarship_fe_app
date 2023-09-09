import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/widgets/Button/Button.dart';
import 'package:ischolarship_fe_app/widgets/FloatingInput/FloatingInput.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  String error = '';
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
            height: heightScreen,
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Xin chào!',
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
                  'Hãy đăng nhập để tiếp tục',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Button(
                    clickBtn: () {},
                    textColor: Color(0xFFFFFFFF),
                    textContent: "ĐĂNG NHẬP",
                    backgroundColor: Color(0xFF1f0ec7),
                    borderColor: Color(0xFF1f0ec7),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: widthScreen,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgetpassword');
                    },
                    child: const Text(
                      "Quên mật khẩu?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff666666),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0,
                      width: widthScreen / 3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xff7c7979),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Hoặc',
                      style: TextStyle(
                        color: Color(0xFF1d0bd4),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 0,
                      width: widthScreen / 3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xff7c7979),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: widthScreen,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Đăng nhập bằng tài khoản',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff76727a),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Image(
                          image: AssetImage('assets/images/googleIcon.png'),
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ],
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
                      "Bạn chưa có tài khoản?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff76727a),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      },
                      child: const Text(
                        "Đăng ký",
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
