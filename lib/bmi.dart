import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'profil.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  // ignore: non_constant_identifier_names
  String jenis_Kelamin;
  // ignore: non_constant_identifier_names
  String tanggal_Lahir;
  String umur;
  //DateTime selectedDate = DateTime.now();

  // ignore: non_constant_identifier_names
  var nama_ = new TextEditingController();
  // ignore: non_constant_identifier_names
  var jenisk_ = new TextEditingController();
  // ignore: non_constant_identifier_names
  var tgllahir_ = new TextEditingController();
  // ignore: non_constant_identifier_names
  var umur_ = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      appBar: AppBar(
        //backgroundColor: Colors.blue[100],
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text('Kalkulator BMI'),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/bmi.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                //color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            suffix: Text('cm'),
                            filled: true,
                            labelText: "Tinggi Badan",
                            hintText: 'Tinggi Badan'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            suffix: Text('kg'),
                            filled: true,
                            labelText: "Berat Badan",
                            hintText: 'Berat Badan'),
                      ),
                    ),
                  ],
                )),
            Container(
                // color: Colors.blue[700],
                child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: nama_,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        filled: true,
                        labelText: "Nama Pengguna",
                        hintText: 'Nama Pengguna'),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    controller: jenisk_,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        filled: true,
                        labelText: "Jenis Kelamin",
                        hintText: 'Jenis Kelamin'),
                  ),
                ),
              ],
            )),
            Container(
                // color: Colors.blue[700],
                child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: tgllahir_,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        filled: true,
                        labelText: "Tanggal Lahir",
                        hintText: 'Tanggal Lahir'),
                  ),
                ),
              ],
            )),
            Container(
                // color: Colors.blue[700],
                child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: umur_,
                    keyboardType: TextInputType.text,
                    maxLength: 300,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        filled: true,
                        labelText: "Umur Pengguna",
                        hintText: 'Umur Pengguna'),
                  ),
                ),
              ],
            )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi_badan: tinggi,
                            berat_badan: berat,
                            nama_pengguna: nama_.text,
                            jenis_kelammin: jenisk_.text,
                            tanggal_lahir: tgllahir_.text,
                            umur: umur_.text)),
                  );
                },
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'Hitung BMI Anda',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HalamanSatu()),
                  );
                },
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text(
                  'Profil Depelover',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparen,
        child: Container(
          height: 30,
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: Text(
            'Developed by I Made Bhisma Putra Nugraha',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}
