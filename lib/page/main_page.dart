import 'package:flutter/material.dart';
import 'package:modul1_pemrograman_mobile/page/ayat_kursi_page.dart';
import 'package:modul1_pemrograman_mobile/page/bacaan_sholat_page.dart';
import 'niat_solat_page.dart' ;
import '../page/list_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const NiatSholat()));
                      },
                      child: Column(
                        children: const <Widget>[
                          Image(image: AssetImage("assets/images/ic_niat.png"),
                            height: 100, width: 100,),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Niat Sholat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const BacaanSholat()));
                      },
                      child: Column(
                        children: const <Widget>[
                          Image(image: AssetImage("assets/images/ic_niat.jpg"),
                            height: 100, width: 100,),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Bacaan Sholat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AyatKursi()));
                      },
                      child: Column(
                        children: const <Widget>[
                          Image(image: AssetImage("assets/images/ic_bacaan.png"),
                            height: 100, width: 100,),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Ayat Kursi",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const List()));
                      },
                      child: Column(
                        children: const <Widget>[
                          Image(image: AssetImage("assets/images/list.png"),
                            height: 100, width: 100,),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Catatan Hafalan",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
