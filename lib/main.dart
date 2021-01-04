import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(SupperHeros());
}

class SupperHeros extends StatelessWidget {
  final List<String> _heroImages = [
    "images/Baw.jpg",
    "images/Jiew.jpg",
    "images/Lip.jpg",
    "images/Arm.jpg",
  ];

  final List<String> _heroNames = [
    "บ่าว เทพหลับ",
    "จิ๋ว เทพบีบ",
    "ลิป เทพหาย",
    "อาร์ม ลดยาก",
  ];

  final List<String> _heroDetails = [
    "ชื่อเดิมคือ แบงค์ Bang (バング) ชายชราผู้เป็นปรมาจารย์แห่งสำนักหมัดสายน้ำทลายหิน โดยพี่ชายของเขาชื่อ บอมบ์ Bomb (ボンブ) ก็ได้เปิดสำนักสอนการต่อสู้เช่นเดียว (หมัดลมหมุนตัดเหล็ก) ถึงแม้ตอนนี้เขาและพี่ชายจะมีอายุอานามมากแล้วก็ตาม แต่ร่างกายและพละกำลังของเขาก็ยังคงเทียบเคียงเมื่อสมัยก่อน เขายังถูกให้ระดับความแข็งแกร่งที่ระดับ 3 จากสมาคมฮีโร่อีกด้วย.",
    "ไซตามะเป็นฮีโร่ที่แข็งแกร่งที่สุดในโลก ในทุกๆครั้ง เขาจะสามารถสยบคู่ต่อสู้ได้ภายในหมัดเดียว เขาเป็นผู้ชายอายุ 25 มีหัวโล้น เนื่องจากการฝึกแสนหฤโหดเพื่อที่จะได้มาเป็นฮีโร่ ไซตามะเป็นคนที่รักความยุติธรรม เขาได้ช่วยคนบริสุทธิ์จากเหล่าสิ่งมีชีวิตประหลาด และช่วยโลกมาแล้วนับครั้งไม่ถ้วน แต่เขาไม่เคยได้รับผลตอบแทนสักนิดเดียว.",
    "ฮีโร่หญิงที่มีผมสีเขียวเรืองแสง ระดับ S แรงค์ 2 ผู้ได้รับสมญานามว่า ” Tornado of Terror” หรือที่แปลว่า “พายุทอร์นาโดแห่งความหวาดกลัว” เขามีความสามารถด้านพลังจิตที่แข็งแกร่ง จนสามารถยกสิ่งของหรือก้อนหินหนักๆ ได้ อีกทั้งยังเป็นเป็นพี่สาวของ Fubuki อีกด้วย.",
    "ศิษย์เอกของไซตามะ เป็นไซบอร์กหรือหุ่นยนตร์ที่เกิดจากการดัดแปลงร่างกายโดย ดร.คุเซโนะ ซึ่งช่วยชีวิตเด็กหนุ่มในวัยเด็กหลังจากเขาต้องสูญเสียครอบครัวจากการเข้าจู่โจมของเหล่าไซบอร์กผู้ชั่วร้ายซึ่ง “บ้านแห่งวิวัฒนาการ” อยู่เบื้องหลัง ในด้านนิสัยนั้น.. เจนอสเป็นคนจริงจังกับทุกสิ่งและไม่ใส่ใจต่อชื่อเสียงผิดกับไซตามะ อย่างไรก็ตาม เจนอสเทิดทูนบูชาไซตามะอย่างมาก และหวังว่าสักวันอาจารย์ของเขาจะถ่ายทอดเคล็ดลับวิชาสู่ความแข็งแกร่งขั้นสุดยอดให้บ้าง.",
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
                Hero(this._heroNames[0], this._heroImages[0],
                    this._heroDetails[0]),
                Hero(this._heroNames[1], this._heroImages[1],
                    this._heroDetails[1]),
                Hero(this._heroNames[2], this._heroImages[2],
                    this._heroDetails[2]),
                Hero(this._heroNames[3], this._heroImages[3],
                    this._heroDetails[3]),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class Hero extends StatelessWidget {
  String _heroName;
  String _heroImages;
  String _heroDetail;

  Hero(this._heroName, this._heroImages, this._heroDetail, {Key key})
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
            backgroundImage: AssetImage(this._heroImages),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumbs_up_down),
                Text(
                  this._heroName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Text(this._heroDetail),
            padding: EdgeInsets.all(25),
          ),
        ],
      )),
    );
  }
}
