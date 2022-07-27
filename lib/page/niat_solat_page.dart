import 'dart:convert';
import 'package:modul1_pemrograman_mobile/model/model_niat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

class NiatSholat extends StatefulWidget {
  const NiatSholat({Key? key}) : super(key: key);

  @override
  _NiatSholatState createState() => _NiatSholatState();
}

class _NiatSholatState extends State<NiatSholat> {
  Future<List<ModelNiat>> ReadJsonData()async{
    final jsonData =
    await rootBundle.rootBundle.loadString('assets/data/niatsholat.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => ModelNiat.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,)
                  ),
              ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff0e1446)
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: const EdgeInsets.only(top: 120, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Niat Sholat Wajib",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("Bacaan Niat Sholat Wajib 5 Waktu",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)
                      ),
                      child: Image.asset('assets/images/bg_shalat.png',
                        width: 215,),
                    ),)
                ],
              ),
              const SizedBox(
                height: 10,),
              Expanded(
                  child: FutureBuilder(
                      future: ReadJsonData(),
                      builder: (context, data) {
                        if (data.hasError) {
                      return Center(
                        child: Text("${data.error}"),
                      );
                    }else if (data.hasData) {
                      var items = data.data as List<ModelNiat>;
                      return ListView.builder(
                          itemCount: items == null ? 0 : items.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(15),
                              child: Theme(data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    title: Text(items[index].name.toString(),
                                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Expanded(child: Container(
                                              padding: const EdgeInsets.only(bottom: 10),
                                              child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(padding: const EdgeInsets.only(left: 8, right: 8),
                                                      child: Text(
                                                        items[index].arabic.toString(),
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(padding: const EdgeInsets.only(
                                                        left: 8, right: 8
                                                    ),
                                                      child: Text(
                                                        items[index].latin.toString(),
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontStyle: FontStyle.italic
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(padding: const EdgeInsets.only(
                                                        left: 8, right: 8, top: 5
                                                    ),
                                                      child: Text(
                                                        items[index].terjemahan.toString(),
                                                        style: const TextStyle(
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    )
                                                  ]
                                              ),
                                            ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            );
                          }
                      );
                    }else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }))
        ],
      )),
    );
  }
}