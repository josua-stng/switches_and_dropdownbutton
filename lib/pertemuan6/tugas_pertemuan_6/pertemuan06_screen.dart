import 'package:flutter/material.dart';

class Pertemuan06Screen extends StatefulWidget {
  Pertemuan06Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan06Screen> createState() => _Pertemuan06ScreenState();
}

class _Pertemuan06ScreenState extends State<Pertemuan06Screen> {
  bool onWifi = false;
  String itemSelected = 'Cita-Cita';
  List nama = [
    'Cita-Cita',
    'Front End',
    'Software Enginer',
    'Back End',
    'Dosen',
    'Gammers'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch')),
      body: Column(
        children: [
          SwitchListTile(
              value: onWifi,
              title: Text('Cita Cita'),
              subtitle: Text('Tekan Ke Pilih Cita Cita'),
              onChanged: (val) {
                setState(() {
                  onWifi = val;
                });
              }),
          if (onWifi == true)
            DropdownButtonFormField(
                items: nama.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                value: itemSelected,
                onChanged: (val) {
                  setState(() {
                    itemSelected = val as String;
                    print(val);
                  });
                })
          else
            Container(),
          if (itemSelected == "Front End")
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Front End'),
                  Divider(),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/WhatsApp%20Image%202022-04-14%20at%2018.53.44.jpeg?alt=media&token=04382d97-fe46-461e-b5e4-5879fef03612'),
                  Text(
                      'Sejak mengenal dunia Teknik Informatika , saya sudah mulai menyukai dunia Front End,saya menyukainya bukan tanpa alasan,sebab dalam ngoding saya suka mendesain layout layout yg ada')
                ],
              ),
            ),
            if (itemSelected == "Software Enginer")
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Sofware Engineering'),
                  Divider(),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/WhatsApp%20Image%202022-04-14%20at%2018.54.37.jpeg?alt=media&token=19c06fe9-453d-432d-be32-4d03a405248f'),
                  Text(
                      'Saya tertarik dengan Software Engineering sebab saya sangat suka dengan materi yg diajarkan,dan juga prospek kerja Software Engineering sangat menyakinkan oleh sebab itu saya ingin menjadi Sofware Engineering')
                ],
              ),
            ),
             if (itemSelected == "Back End")
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Back End'),
                  Divider(),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/WhatsApp%20Image%202022-04-14%20at%2018.54.56.jpeg?alt=media&token=5a0d3b55-d420-46ab-a62e-93d45af28c5a'),
                  Text(
                      'Pada saat memasuki semester lalu ,saya belajar back end,dan sadar bahwa back end sangat penting bagi kita yg ingin menjadi fullstack developer,oleh karena itu saya ingin menjadi seorang back end supaya bisa menjadi seorang fullstack ')
                ],
              ),
            ),
             if (itemSelected == "Dosen")
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Dosen'),
                  Divider(),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/WhatsApp%20Image%202022-04-14%20at%2018.55.11.jpeg?alt=media&token=714d86da-5244-4659-907b-c6a10be03341'),
                  Text(
                      'Alasan saya menjadi dosen sebenarnya simple,saya ingin mengenal kepada banyak orang betapa pentingnya Coding pada zaman sekarang,sebab di zaman sekarang sudah menggunakan teknologi,dan Indonesia butuh banyak proggramer supaya dapat mengikuti perkembangan zaman.oleh sebab itu saya memilih profesi ini')
                ],
              ),
            ),
             if (itemSelected == "Gammers")
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Gamers'),
                  Divider(),
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/WhatsApp%20Image%202022-04-14%20at%2018.55.29.jpeg?alt=media&token=403239cd-93d9-4b5d-84b2-7b4682f9be30'),
                  Text(
                      'Yang terakhir adalah mungkin cita cita bagi sebagian besar anak laki" yaitu gamers,alasan nya sebab sejak kecil saya suka bermain game dan mulai beranjak remaja saya sudah mulai memasuki dunia kompetitif ,oleh sebab itu saya ingin menjadi Gamers ,walaupun sekarang chance nya sangat kecil untuk saya memasuki profesi sebagai Gamers')
                ],
              ),
            ),
        ],
      ),
    );
  }
}
