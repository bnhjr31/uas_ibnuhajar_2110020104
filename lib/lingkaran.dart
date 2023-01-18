import 'package:flutter/material.dart';
import 'main.dart';

class hitungLingkaran extends StatefulWidget {
  @override
  _hitungLingkaranState createState() => _hitungLingkaranState();
}

class _hitungLingkaranState extends State<hitungLingkaran> {
  double jariJari = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Luas Lingkaran'),
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
                            jariJari = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Jari - Jari Lingkaran",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'Masukkan Jari - Jari Lingkaran'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (BuildContext) => lingkaranResult(
                          jari_lingkaran: jariJari,
                        ),
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

class lingkaranResult extends StatelessWidget {
  lingkaranResult({required this.jari_lingkaran});

  final double jari_lingkaran;

  @override
  Widget build(BuildContext context) {
    double hasil1 = (3.14 * jari_lingkaran * jari_lingkaran * 1.0);
    double hasil2 = (22 / 7 * jari_lingkaran * jari_lingkaran * 1.0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HASIL LUAS LINGKARAN"),
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
              'Luas Lingkaran Jika π = 3.14 Adalah : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil1 cm²',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Luas Lingkaran Jika π = 22/7 Adalah : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil2 cm²',
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
