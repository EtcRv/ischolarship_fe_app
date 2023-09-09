import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/models/modes.dart';

class Scholarship extends StatefulWidget {
  const Scholarship({super.key, required this.data});

  final ScholarshipModel data;

  @override
  State<Scholarship> createState() {
    return _ScholarshipState();
  }
}

class _ScholarshipState extends State<Scholarship> {
  bool isLove = false;

  getDataLevel() {
    if (widget.data.level == DegreeType.intermediate) {
      return "Intermediate";
    } else if (widget.data.level == DegreeType.collage) {
      return "Colage";
    } else if (widget.data.level == DegreeType.doctoral) {
      return "Doctoral";
    } else if (widget.data.level == DegreeType.master) {
      return "Master";
    } else if (widget.data.level == DegreeType.university) {
      return "University";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      widget.data.name,
                      style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLove = !isLove;
                      });
                    },
                    icon: isLove
                        ? Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.yellow.shade600,
                          )
                        : Icon(
                            Icons.star_border,
                            size: 30,
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Level",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        getDataLevel(),
                        style: TextStyle(
                          color: Colors.blue.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Deadline",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        widget.data.deadline,
                        style: TextStyle(
                          color: Colors.blue.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.blue.shade200,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade500,
                    ),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/scholarship/${widget.data.id}');
                      },
                      icon: Icon(
                        Icons.edit_note,
                        color: Colors.white,
                      ),
                      label: Text(
                        "View & Apply",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
