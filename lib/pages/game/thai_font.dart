import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThaiFont extends StatefulWidget {
  const ThaiFont({Key? key}) : super(key: key);

  @override
  _ThaiFontState createState() => _ThaiFontState();
}

class _ThaiFontState extends State<ThaiFont> {
  var font = 'Mali';

  List<String> fonts = ['Kanit', 'Krub', 'Srisakdi', 'Mitr', 'Charmon','Thasadith',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'THAI FONT VIEWER',
          style: GoogleFonts.mali(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.orange.shade200,
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bg4.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            // column all
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // column ว่างๆข้างบน
                Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                  ], // children ของ Column Text
                ),
                // ข้อความตรงกลาง
                Column(
                  children: [
                    Text(
                      'การเดินทางขากลับคงจะเหงาน่าดู',
                      style: GoogleFonts.getFont(font,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ], // children ของ Column Text
                ),
                Column(
                  children: [
                    // ข้อความว่า Font อะไร
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Text('Font : $font',
                          style: GoogleFonts.mali(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    // ปุ่มเลือก Font
                    Container(
                      width: 500,
                      height: 250,
                      padding: new EdgeInsets.all(5.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10.0,
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 30.0,
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Container(height: 2.0),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = 'Kanit';
                                });
                              },
                              child: Text(
                                'Kanit',
                                style: GoogleFonts.kanit(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  font = 'Krub';
                                });
                              },
                              child: Text(
                                'Krub',
                                style: GoogleFonts.krub(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = 'Srisakdi';
                                });
                              },
                              child: Text(
                                'Srisakdi',
                                style: GoogleFonts.srisakdi(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = 'Mitr';
                                });
                              },
                              child: Text(
                                'Mitr',
                                style: GoogleFonts.mitr(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = 'Charmonman';
                                });
                              },
                              child: Text(
                                'Charmonman',
                                style: GoogleFonts.charmonman(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  font = 'Thasadith';
                                });
                              },
                              child: Text(
                                'Thasadith',
                                style: GoogleFonts.thasadith(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(110, 40),
                                primary: Colors.orange.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
