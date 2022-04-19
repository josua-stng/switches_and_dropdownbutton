import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan6/tugas_pertemuan_6/pertemuan06_screen.dart';
import 'package:flutter_application_1/pertemuan6/pertemuan06_provider.dart';
import 'package:provider/provider.dart';

class PertemuanDark06Screen extends StatefulWidget {
  PertemuanDark06Screen({Key? key}) : super(key: key);

  @override
  State<PertemuanDark06Screen> createState() => _PertemuanDark06ScreenState();
}

class _PertemuanDark06ScreenState extends State<PertemuanDark06Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<PertemuanDark06ScreenProvider>(context);
    String itemselected= 'Pilih Hp';
    List items = ['Pilih Hp','Iphone','Asus Rog','Black Shark','Tesla'];
    return Scaffold(
      appBar: AppBar(
      title: Text('Switches | DropdownB')),
      body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark Mode Theme'),
              Switch(
              value: prov.enableDarkmode,
              activeColor: Colors.green,
              onChanged: (val){
                prov.setBrighntess= val;
              })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Pekerjaan'),
              DropdownButton(
                items: items.map((item){
                 return DropdownMenuItem(
                   child: Text(item),
                   value: item,
                   ); 
                }).toList(),
                value: itemselected,
               onChanged: (val){
                 setState(() {
                   itemselected= val as String;
                 });
               })
            ],
          )
        ],
      ),
      ),
    );
  }
}