import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/models/Scholarship.dart';
import 'package:ischolarship_fe_app/widgets/Scholarship/Scholarship.dart';

var sampleSchoolScholarshipData = [
  ScholarshipModel(
    id: "1",
    name: "Test Scholarship 1",
    image: 'assets/images/scholarship1.png',
    organization: "HUST",
    location: "Viet Nam",
    applyLocation: "Hust Student",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.full,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
  ScholarshipModel(
    id: "2",
    name: "Test Scholarship 2",
    image: 'assets/images/scholarship1.png',
    organization: "HUST HUST",
    location: "Viet Nam",
    applyLocation: "Huster",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.academic,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
  ScholarshipModel(
    id: "3",
    name: "Test Scholarship 3",
    image: 'assets/images/scholarship1.png',
    organization: "HUST HUST",
    location: "Viet Nam",
    applyLocation: "Huster",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.academic,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
];

var sampleCorporateScholarshipData = [
  ScholarshipModel(
    id: "4",
    name: "Test Corporate 1",
    image: 'assets/images/scholarship1.png',
    organization: "HUST",
    location: "Viet Nam",
    applyLocation: "Hust Student",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.full,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
  ScholarshipModel(
    id: "5",
    name: "Test Corporate 2",
    image: 'assets/images/scholarship1.png',
    organization: "HUST HUST",
    location: "Viet Nam",
    applyLocation: "Huster",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.academic,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
  ScholarshipModel(
    id: "6",
    name: "Test Corporate 3",
    image: 'assets/images/scholarship1.png',
    organization: "HUST HUST",
    location: "Viet Nam",
    applyLocation: "Huster",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.academic,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
  ScholarshipModel(
    id: "7",
    name: "Test Corporate 4",
    image: 'assets/images/scholarship1.png',
    organization: "HUST HUST",
    location: "Viet Nam",
    applyLocation: "Huster",
    ranking: 1,
    deadline: "Nope",
    type: ScholarshipType.academic,
    value: "Big Value",
    level: DegreeType.university,
    field: "",
    link: "",
    requirement: Requirement(
      score: Score(CPA: 4.0),
      competitions: true,
      experience: true,
      activities: "Test activities",
    ),
    description: "Test Description about Scholarship",
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedInput = 0;
  bool isUniversity = true;

  var dataScholarship = sampleSchoolScholarshipData;
  final TextEditingController _searchController = TextEditingController();

  late List<Widget> scholarshipWidgets =
      dataScholarship.map((data) => Scholarship(data: data)).toList();

  void changeScholarship(bool status) {
    setState(() {
      isUniversity = status;
      if (status) {
        dataScholarship = sampleSchoolScholarshipData;
      } else {
        dataScholarship = sampleCorporateScholarshipData;
      }
      scholarshipWidgets =
          dataScholarship.map((data) => Scholarship(data: data)).toList();
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Decoration uniDecoration = const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.green, // Color of the bottom border
              width: 3, // Thickness of the bottom border
            ),
          ),
        ),
        corpoDecoration = const BoxDecoration();

    if (isUniversity) {
      uniDecoration = const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.green, // Color of the bottom border
            width: 3, // Thickness of the bottom border
          ),
        ),
      );
      corpoDecoration = const BoxDecoration();
    } else {
      corpoDecoration = const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.green, // Color of the bottom border
            width: 3, // Thickness of the bottom border
          ),
        ),
      );
      uniDecoration = const BoxDecoration();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IScholarship",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined)),
          SizedBox(
            width: 10,
          ),
          InkWell(
            radius: 100,
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/user_avatar.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(
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
              children: <Widget>[
                TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          print("search: ${_searchController.text}");
                          _searchController.clear();
                        },
                      ),
                      border: InputBorder.none,
                    )),
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          changeScholarship(true);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Container(
                          decoration: uniDecoration,
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'University',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          changeScholarship(false);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Container(
                          decoration: corpoDecoration,
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Corporate',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(children: scholarshipWidgets),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
