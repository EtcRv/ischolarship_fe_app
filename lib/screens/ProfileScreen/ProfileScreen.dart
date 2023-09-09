import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/screens/ProfileScreen/widgets/ProfileWidget.dart';
import 'package:ischolarship_fe_app/screens/ProfileScreen/widgets/SettingWidget.dart';
import 'package:ischolarship_fe_app/screens/ProfileScreen/widgets/UpdateProfileWidget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  String gender = "Not-Set";
  String dob = "Not-Set";
  String number = "Not-Set";
  String mail = "dungbacninh12@gmail.com";
  bool isEdit = false;

  void changeState(String type, value) {
    if (type == "isEdit") {
      setState(() {
        isEdit = value;
      });
    } else if (type == "gender") {
      setState(() {
        gender = value;
      });
    } else if (type == "dob") {
      setState(() {
        dob = value;
      });
    } else if (type == "number") {
      setState(() {
        number = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nguyen Khac Dung",
        ),
        // backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: SettingWidget());
                    });
              },
              icon: Icon(Icons.settings)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xfff5f5f5)),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                radius: 100,
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/user_avatar.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: !isEdit
                    ? ProfileWidget(
                        gender: gender,
                        dob: dob,
                        number: number,
                        mail: mail,
                        changeStatus: changeState,
                      )
                    : UpdateProfileWidget(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
