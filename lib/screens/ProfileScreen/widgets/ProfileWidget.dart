import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    super.key,
    required this.gender,
    required this.dob,
    required this.number,
    required this.mail,
    required this.changeStatus,
  });
  final String gender;
  final String dob;
  final String number;
  final String mail;
  void Function(String, dynamic) changeStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Information",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                changeStatus("isEdit", true);
              },
              child: const Row(
                children: [
                  Text("Edit profile"),
                  SizedBox(
                    width: 6,
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.people),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "Gender: ${gender}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.cake),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "Dob: ${dob}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(Icons.smartphone_sharp),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Phone: ${number}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(Icons.mail),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Mail: ${mail}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ],
    );
  }
}
