import 'package:flutter/material.dart';

class AyatKursi extends StatefulWidget {
  const AyatKursi({Key? key}) : super(key: key);

  @override
  State<AyatKursi> createState() => _AyatKursiState();
}

class _AyatKursiState extends State<AyatKursi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff44aca0),
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
                        color: Colors.white,
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffb4ddd9),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: const EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Ayat Kursi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Bacaan Ayat Kursi dengan Tafsirnya",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.asset("assets/images/bg_quran.jpg",
                        width: 330, height: 200, fit: BoxFit.fill),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(padding: const EdgeInsets.only(top: 250, right: 20),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xff0e1446)
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.amber,
                              borderRadius: BorderRadius.circular(50),
                              onTap: (){
                                showDialog(context: context, builder: (_) => const AlertDialog(
                                  title: Center(
                                    child: Text("Tafsir Ayat Kursi"),
                                  ),
                                  content: SingleChildScrollView(
                                    child: Text(
                                      "Allah adalah Dzat yang tidak ada yang berhak dihadapkan padanya uluhiyah dan ubudiyah kecuali Dia, Yang Maha hidup yang mempunyai seluruh hakikat kehidupan yang sempurna, sesuai dengan keagunganNya, lagi Maha mengatur segala sesuatu, tidak mengantuk dan tidak tidur. Semua yang ada di langit dan seluruh yang ada di bumi adalah milikNya. Tidak ada seorangpun yang berani maju memberikan syafaat di sisiNya kecuali dengan izinNya. pengetahuanNya meliputi segala makhluk-makhluk yang ada, yang ada di masa lalu, sekarang dan di masa yang akan datang. Dia mengetahui perkara-perkara yang akan terjadi di hadapan makhluk-makhluk berupa hal-hal yang terjadi di masa yang akan datang, dan apa yang telah terjadi di belakang mereka berupa perkara-perkara masa lalu. Dan tidak seorang pun dari makhluk yang mengetahui sedikit saja dari ilmuNya selain apa yang Allah ajarkan dan tampakkan kepadanya. Dan kursi Allah meliputi langit dan bumi. Dan kursi ini adalah tempat dua kaki Allah jalla jalaluh. Dan tidak ada yang mengetahui bentuknya selain Allah. Memelihara keduanya tidaklah memberatkan Allah. Dan Dia Maha tinggi dengan Dzat dan sifat-sifatNya di atas semua makhlukNYa, yang menghimpun seluruh sifat keagungan dan kebesaranNya. Ayat ini merupakan ayat paling agung di dalam Al-Quran dan dinamakan dengan sebutan Ayat Kursi. (Tafsir al-Muyassar)",
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ));
                              },
                              child: const Center(
                                  child: Text(
                                    "Tafsir",
                                    style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ),
                      )
                  ),)
              ],
            ),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView(
                    children: [
                      const Center(
                        child: Text(
                            "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                      const Center(
                        child: Text("Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SelectableText(
                        "ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌۭ وَلَا نَوْمٌۭ ۚ لَّهُۥ مَا فِى ٱلسَّمَـٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍۢ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَـٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ ٢٥٥",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: const SelectableText(
                          "Allahu laa ilaaha illaa Huwal Hayyul Qoyyuum, laa ta’khudzuhuu sinatuw walaa nauum, la Huu maa fis samawaati wa maa fil ardh, mann dzalladzii yasyfa’u ‘inda Huu, illa bi idznih, ya’lamu maa bayna aidiihim wa maa kholfahum, wa laa yuhiituuna bisyayim min ‘ilmi Hii illaa bi maa syaa’, wa si’a kursiyyuus samaawaati walardh, wa laa yauudlu Huu hifdzuhumaa, wa Huwal ‘aliyyul ‘adziiim",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: const SelectableText(
                          "Terjemahan : Allah, tidak ada Tuhan (yang berhak disembah) melainkan Dia Yang Hidup kekal lagi terus menerus mengurus (makhluk-Nya); tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa'at di sisi Allah tanpa izin-Nya? Allah mengetahui apa-apa yang di hadapan mereka dan di belakang mereka, dan mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dan Allah tidak merasa berat memelihara keduanya, dan Allah Maha Tinggi lagi Maha Besar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}