import 'package:flutter/material.dart';
import 'main.dart';

class profilDeveloper extends StatefulWidget {
  @override
  _profilDeveloperState createState() => _profilDeveloperState();
}

class _profilDeveloperState extends State<profilDeveloper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Developer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.seekpng.com/png/full/966-9665493_my-profile-icon-blank-profile-image-circle.png',
                width: 100.0,
                height: 100.0,
              ),
              Text(
                'NPM : 2110020104',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Nama Developer : Ibnu Hajar',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Kelas : 5A SI Non Reguler Banjarmasin',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Kontak : 0831 2533 3881',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Alamat : Kota Banjarmasin',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: Text('Kembali'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
