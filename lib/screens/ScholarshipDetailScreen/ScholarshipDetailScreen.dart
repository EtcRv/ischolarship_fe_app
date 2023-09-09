import 'package:flutter/material.dart';
import 'package:ischolarship_fe_app/models/Scholarship.dart';
import 'package:ischolarship_fe_app/widgets/Button/Button.dart';

var dummyScholarshipDetail = ScholarshipModel(
  id: "1",
  name: "Chương trình học bổng Nữ sinh Công nghệ BOSCH năm 2023",
  image: 'assets/images/scholarship1.png',
  organization: "Công Ty TNHH Bosch Global Software Technologies",
  location: "HUST",
  deadline: "20/07/2023",
  type: ScholarshipType.organizations,
  value: "Từ 11 triệu - 3 triệu đồng/suất",
  level: DegreeType.collage,
  field: "Kỹ thuật máy tính, Điện từ - viễn thông, Vật lý kỹ thuật.",
  link: "https://sv-ctt.hust.edu.vn/#/hoc-bong/100/chi-tiet",
  requirement: Requirement(
    score: Score(CPA: 3.0),
    competitions: true,
    experience: true,
    activities: "Điểm rèn luyện kì 2022.1 từ 65/100 trở lên",
  ),
  description: '''
    Căn cứ Thỏa thuận tài trợ học bổng giữa Chi nhánh Công Ty TNHH Bosch Global Software Technologies tại Hà Nội và Đại học Bách khoa Hà Nội về việc triển khai chương trình học bổng Nữ sinh Công nghệ BOSCH năm 2023; Nhà trường xin thông báo Chương trình học bổng với các nội dung sau:

Đối tượng xét chọn:
Nữ sinh viên các khóa K64, 65, 66 các ngành: Kỹ thuật máy tính, Điện từ - viễn thông, Vật lý kỹ thuật.

- Kết quả học tập CPA từ 3.0/4 trở lên.

- Điểm rèn luyện kì 2022.1 từ 65/100 trở lên.

- Không xét học bổng đối với các sinh viên đã nhận được học bổng tài trợ doanh nghiệp trong năm học 2022-2023.

Giá trị và số lượng học bổng: 
- Giải nhất: 11,000,00 VND – Số lượng: 1 suất

- Giải nhì: 9,000,000 VND – Số lượng: 2 suất

- Giải ba: 6,000,000 VND – Số lượng: 2 suất

- Giải khuyến khích: 3,000,000 VND – Số lượng: 3 suất.

Sinh viên đăng ký học bổng theo các bước sau:
- Bước 1: Sinh viên đăng ký online tại đây trước ngày 20/07/2023. Sinh viên điền thông tin theo yêu cầu và tải lên các minh chứng về việc tham gia thực hiện đề tài NCKH hoặc hoạt động ngoại khóa (chụp ảnh chứng nhận và tập hợp thành 1 file pdf).

- Bước 2: Sau khi Nhà trường thông báo kết quả sơ loại, những sinh viên đủ điều kiện sẽ nộp hồ sơ bản cứng. 

Hồ sơ bản cứng gồm:
- Đơn xin cấp học bổng (in ra từ hệ thống, không cần xin xác nhận của địa phương trừ khi thuộc diện hoàn cảnh gia đình khó khăn).

- Bảng điểm CPA đến hết kì 2022.1 có xác nhận của Phòng ĐT hoặc Viện chuyên ngành.

- Bằng chứng về việc tham gia thực hiện đề tài Nghiên cứu khoa học (nếu có).

- Bằng chứng về việc tham gia các hoạt động ngoại khóa (nếu có)
    ''',
);

class ScholarshipDetailScreen extends StatelessWidget {
  ScholarshipDetailScreen({super.key, required this.scholarshipId});
  String scholarshipId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Scholarship Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xfff5f5f5),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 80,
                  child: Text(
                    dummyScholarshipDetail.name,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border(bottom: )
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Value",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            dummyScholarshipDetail.value,
                            style: TextStyle(
                              color: Colors.blue.shade600,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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
                            dummyScholarshipDetail.deadline,
                            style: TextStyle(
                              color: Colors.blue.shade600,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border(bottom: )
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "About",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        dummyScholarshipDetail.description,
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Button(
                              clickBtn: () {},
                              textColor: Color(0xFFFFFFFF),
                              textContent: "ĐĂNG NHẬP",
                              backgroundColor: Color(0xFF1f0ec7),
                              borderColor: Color(0xFF1f0ec7),
                            ),
                          ])
                    ],
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
