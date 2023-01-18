import 'package:flutter/material.dart';
import 'main.dart';

class hitungPersegi extends StatefulWidget {
  @override
  _hitungPersegiState createState() => _hitungPersegiState();
}

class _hitungPersegiState extends State<hitungPersegi> {
  int sisi = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Luas Persegi'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            sisi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Sisi Persegi",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'Masukkan Sisi Persegi'),
                      ),
                    )
                  ],
                ),
                Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (BuildContext) =>
                            persegiResult(sisi_persegi: sisi),
                      );
                      Navigator.of(context).push(route);
                    },
                    child: Text('Hitung Luas'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class persegiResult extends StatelessWidget {
  persegiResult({required this.sisi_persegi});

  final int sisi_persegi;

  @override
  Widget build(BuildContext context) {
    double hasil = (sisi_persegi * sisi_persegi * 1.0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HASIL LUAS PERSEGI"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(color: Colors.white),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Persegi Adalah : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil cm²',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
