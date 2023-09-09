import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/widgets/Button/Button.dart';
import 'package:ischolarship_fe_app/widgets/FloatingInput/FloatingInput.dart';

class SettingWidget extends StatefulWidget {
  SettingWidget({super.key});

  @override
  State<SettingWidget> createState() {
    return _SettingWidgetState();
  }
}

class _SettingWidgetState extends State<SettingWidget> {
  String oldPass = "";
  String newPass = "";
  String reNewPass = "";
  bool notiMode = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            "Change your password",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingInput(
            labelText: "Old Password",
            setInputValue: ((value) {
              setState(() {
                oldPass = value;
              });
            }),
            isPassword: true,
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingInput(
            labelText: "New Password",
            setInputValue: ((value) {
              setState(() {
                newPass = value;
              });
            }),
            isPassword: true,
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingInput(
            labelText: "Re-enter New Password",
            setInputValue: ((value) {
              setState(() {
                reNewPass = value;
              });
            }),
            isPassword: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Button(
            clickBtn: () {},
            textColor: Colors.white,
            textContent: "Đổi mật khẩu",
            backgroundColor: Color(0xFF007AFF),
            borderColor: Color(0xFF007AFF),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Other settings",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CupertinoSwitch(
                value: notiMode,
                onChanged: (value) {
                  setState(() {
                    notiMode = value;
                  });
                },
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                " Send recommend scholarship to my mail!",
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
