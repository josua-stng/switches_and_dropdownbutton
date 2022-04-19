import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application_1/pertemuan04/setstate/login_screen.dart';
import 'package:flutter_application_1/pertemuan04_1/detail_screen.dart';
import 'package:flutter_application_1/pertemuan04_2/tixid_screen.dart';
import 'package:flutter_application_1/pertemuan05_3/pertemuan05_provider.dart';
import 'package:flutter_application_1/pertemuan05_3/pertemuan05_screen.dart';
import 'package:flutter_application_1/pertemuan5/pertemuan5_1/logic_provider.dart';
import 'package:flutter_application_1/pertemuan5/pertemuan5_1/screen_dart.dart';
import 'package:flutter_application_1/pertemuan6/pertemuan06_screen.dart';
import 'package:flutter_application_1/pertemuan6/tugas_pertemuan_6/pertemuan06_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pertemuan6/pertemuan06_provider.dart';

void main() {
  runApp( MultiProvider(
     providers: [
          ChangeNotifierProvider(create: (_) => LogicProvider()),
          ChangeNotifierProvider(create: (_) => TestItem()),
          ChangeNotifierProvider(create: (_) => PertemuanDark06ScreenProvider()),
          ],
          child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final prov  = Provider.of<PertemuanDark06ScreenProvider>(context);
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
         theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Pertemuan06Screen()
    );
  }
}

