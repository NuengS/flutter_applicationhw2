import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Supperfriends());
}

class Supperfriends extends StatelessWidget {
  final List<String> _friendImages = [
    "images/Baw.jpg",
    "images/Jiew.jpg",
    "images/Lip.jpg",
    "images/Arm.jpg",
  ];

  final List<String> _friendNames = [
    "บ่าว เทพหลับ",
    "จิ๋ว เทพบีบ",
    "ลิป เทพหาย",
    "อาร์ม ลดยาก",
  ];

  final List<String> _friendDetails = [
    "บ่าว ฉายานี้ได้มาจากการที่บ่าวนั้นเวลาว่างเป็นหลับแล้วหลับได้ทั้งวัน ความรู้สึกที่มีต่อบ่าวเป็นเพื่อนที่เพิ่งรู้จักกันตอนขึ้นมหาลัย โดดเรียนก็โดดด้วยกัน เรียนก็เรียนด้วยกัน ไปมอก็ไปด้วยกัน มีปัญหาอะไรบ่าวคอยช่วยอยู่ตลอด เป็นเพื่อนที่ดีมาก รู้สึกขอบคุณที่ได้เป็นเพื่อนกัน.",
    "จิ๋ว ฉายาที่นี้ได้มาจาก เมื่อก่อนจิ๋วมีอยู่ช่วงเวลาหนึ่งไปเที่ยวถ่ายรูปด้วยกัน หรือไม่ก็ถ่ายด้วยตนเองจิ๋วมักจะปรับแต่งรูปโดยการ ทำให้หน้าใสโดยการลบสิว จุดด่างดำ และบีบช่วงแขนขารวมทั้งลำตัวที่ดูแล้วอ้วนจนเกินไปจนแลดูผอมเพรียว ความรู้สึกที่มีต่อจิ๋ว จิ๋วเป็นคนดี จิ๋วเป็นผู้นำที่ดีคนนึง เป็นคนบ้าๆบอ เป็นคนสบายๆ ชิลล์ๆ สำหรับผมเขาเป็นเพื่อนที่ดีของผมคนหนึ่งเลย.",
    "ลิป ฉายานี้เกิดจากตัวโซเชียลที่เขาเล่นค่อยข้างลึกลักเข้าถึงอยาก บางทีหายเพราะหลับ บางทีหายเพราะปิดิสภานะการออนนี้คือที่มาของฉายาที่ผมตั้งให้ เขาเป็นเพื่อนที่ไม่ค่อยทุกข์ร้อนพร้อมชิลล์ๆไปกับผม ทั้งงาน ทั้งชีวิตประจำวัน ทำให้ผมรู้สึกสบายใจที่มีเพื่อนที่ทำตัวชิลล์ๆไม่เครียด เขาเป็นเพื่อนที่ดีมากสำหรับผม ถึงจะไม่ค่อยได้คุยอะไรกันเยอะแยะมากมายสักเท่าไหร่ แต่ก็ให้รู้ว่าสนิทกัน .",
    "อาร์ม ฉายานี้ได้มาจาก อาร์มจะเป็นคนบ่นจะบอกว่าลดน้ำหนักๆ ไปวิ่งบ้าง แต่พอไม่กี่นาทีต่อมาก็ไปเรื่องของกินโดยทันที ทำในร่างในปัจจุบันเทียบไม่ได้กับเมื่อก่อน ความรู้สึกที่มีอาร์มเป็นเพื่อนที่ดี ผมมักจักชอบแกล้งบ่อยๆ เขาก็เป็นเพื่อนที่ดีของผมอีกคนเลย.",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.yellow[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("My Friends"),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Column(
              children: [
                friend(this._friendNames[0], this._friendImages[0],
                    this._friendDetails[0]),
                friend(this._friendNames[1], this._friendImages[1],
                    this._friendDetails[1]),
                friend(this._friendNames[2], this._friendImages[2],
                    this._friendDetails[2]),
                friend(this._friendNames[3], this._friendImages[3],
                    this._friendDetails[3]),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class friend extends StatelessWidget {
  String _friendName;
  String _friendImages;
  String _friendDetail;

  friend(this._friendName, this._friendImages, this._friendDetail, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          child: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(this._friendImages),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumbs_up_down),
                Text(
                  this._friendName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Text(this._friendDetail),
            padding: EdgeInsets.all(25),
          ),
        ],
      )),
    );
  }
}
