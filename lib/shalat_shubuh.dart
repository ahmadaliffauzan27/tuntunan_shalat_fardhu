import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuntunan_sholat/shared/theme.dart';

class ShalatShubuh extends StatefulWidget {
  const ShalatShubuh({super.key});

  @override
  State<ShalatShubuh> createState() => _ShalatShubuhState();
}

class _ShalatShubuhState extends State<ShalatShubuh> {
  late AudioPlayer audioPlayer;
  String durasi = '00:00:00';

  _ShalatShubuhState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(String url) async {
    try {
      await audioPlayer.play(UrlSource(url));
    } catch (error) {
      print('Error while playing audio: $error');
    }
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shalat Shubuh'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '1. Berdiri tegak menghadap kiblat, pandangan diarahkan ke tempat sujud',
                      style: subtitleFont,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2. Membaca Niat',
                          style: subtitleFont,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'اُصَلّى فَرْضَ الصُّبْحِ رَكْعَتَيْنِ مُسْتَقْبِلَ الْقِبْلَةِ اَدَاءً ِللهِ تَعَالَى',
                          style: arabicFont,
                          textAlign: TextAlign.end,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ushollii Fardhosh Shubhi Rok\'ataini Mustaqbilal Qiblati Adaa-An Lillaahi Ta\'aala\n\nArtinya: "Aku berniat salat subuh dua raka\'at menghadap kiblat sebagai makmum karena Allah Ta\'ala.',
                          style: subtitleFont,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  playSound(
                                      'https://soundcloud.com/mizi-wahid/19-niat-subuh-single?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing');
                                },
                                child: Text('Play')),
                            Text(
                              durasi,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text('Stop')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '3. Takbiratul Ihram\n\nTakbiratul ihram dilakukan dengan mengangkat kedua tangan yang sejajar dengan telinga (untuk laki-laki) dan sejajar dada (untuk perempuan), dan telapak tangan dihadapkan ke arah kiblat dengan mengucap, "Allahu Akbar"',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '4. Bersedekap\n\nBersedekap ialah meletakkan tangan kanan di atas tangan kiri. Tangan yang bersedekap ditaruh antara pusar dan dada.',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '5. Membaca Doa Iftitah\n\nBerikut ini adalah bacaan doa iftitah:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              'اللَّهُ أَكْبَرُ كَبِيرًا ا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ مِنْ نَفْخِهِ وَنَفْثِهِ وَهَمْزِهِ',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Allaahu akbar kabiraa walhamdulillaahi katsiiraa, wa subhaanallaahi bukratan wa\'ashiilaa. Innii wajjahtu wajhiya lilladzii fatharas samaawaati wal ardha haniifan musliman wa maa anaa minal musyrikiin. Inna shalaatii wa nusukii wa mahyaaya wa mamaatii lillaahi rabbil \'aalamiin. Laa syariikalahu wa bidzaalika umirtu wa ana minal muslimiin\n\nArtinya: "Allah Maha Besar, Allah Maha Besar, Allah Maha Besar. Segala puji bagi Allah dengan pujian yang banyak, segala puji bagi Allah dengan pujian yang banyak, segala puji bagi Allah dengan pujian yang banyak. Maha Suci Allah di waktu pagi dan sore. Maha Suci Allah di waktu pagi dan sore. Maha Suci Allah di waktu pagi dan sore. Aku berlindung kepada Allah dari tiupan, bisikan, dan godaan setan."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '6. Membaca ta\'awudz, basmalah, dan surah Al-Fatihah\n\nSetelah membaca doa iftitah, disusul dengan membaca surah Al-fatihah dengan ta\'awudz dan basmalah.',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ الرَّحْمَٰنِ الرَّحِيمِ مَالِكِ يَوْمِ الدِّينِ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '7. Membaca salah satu surah Al-Qur\'an.\n\nSelanjutnya, setelah membaca Al-Fatihah, disusul dengan surah pendek Al-Qur\'an.',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '8. Rukuk\n\nSetelah selesai membaca surah Al-Qur\'an, gerakkan badan untuk rukuk dengan mengucapkan takbir, "Allahu Akbar" seraya mengangkat kedua tangan yang sejajar dengan pundak seperti Gerakan takbiratul ihram. Berikut ini adalah bacaan rukuk yang dibaca sebanyak tiga kali:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  'سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ',
                                  style: arabicFont,
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Subhaana robbiyal \'adziimi wabihamdih\n\nArtinya: "Maha suci Tuhan yang Maha Agung serta memujilah aku kepada-Nya."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '9. I\'tidal\n\nI\'tidal adalah gerakan sholat yaitu bangkit dari rukuk sambil mengangkat kedua tangan sejajar dada atau telinga seraya mengucapkan:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  'سَمِعَ اللهُ لِمَنْ حَمِدَهُ',
                                  style: arabicFont,
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                            Text(
                              'Sami Allahu liman hamidah.\n\nArtinya: "Allah mendengar orang-orang yang memuji-Nya."\n\nMasih dalam keadaan berdiri tegap, dilanjutkan dengan mengucapkan doa berikut:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَمِلْءَ الْأَرْضِ وَمِلْءَ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Rabbana lakal-hamdu mil\'us-samaawaati wa mil-ul-ardhi wa mil\'u maa syi\'ta min sya\'in ba\'du.\n\nArtinya: "Ya Allah Tuhan kami! Bagi-Mu segala puji, sepenuh langit dan bumi, dan sepenuh barang yang Engkau kehendaki sesudah itu."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10. Sujud Pertama\n\nSujud dilakukan dengan cara bertumpu pada tujuh anggota badan (dahi, telapak tangan, lutut, dan kedua kaki), serta tumakninah. Lalu, membaca doa sujud:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  'سُبْحَانَ رَبِّىَ الأَعْلَى وَبِحَمْدِهِ',
                                  style: arabicFont,
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Subhanaa Robiyal A\'laa Wa Bi Hamdih\n\nArtinya: "Mahasuci Rabbku Yang Mahatinggi dan pujian untuk-Nya."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '11. Duduk di Antara Dua Sujud\n\nSetelah bangkit dari sujud, dilanjutkan dengan duduk iftirasyi dengan membaca:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'رب اغْفِرلي وَارْحَمْنِى واجبرني وَارْفَعْنِي وَارْزُقْنِى وَاهْدِنِى وَعَافِنِى وَاعْفُ عَنِّى',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Robbighfirlii warhamnii wajburnii warfa\'nii warzuqnii wahdinii wa\'aafinii wa\'fu \'annii.\n\nArtinya: "Ya Allah ampunilah aku, rahmatilah aku, perbaikilah keadaanku, tinggikanlah derajatku, berilah rezeki dan petunjuk untukku"',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '12. Sujud Kedua\nLakukan sujud kedua dengan posisi dan bacaan yang sama dengan sujud pertama.',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '13. Setelah bangkit dari sujud kedua, lalu berdiri ke rakaat kedua dengan bertakbir "Allahu Akbar" tanpa mengangkat kedua tangan. Pada rakaat kedua, lakukan hal yang sama dengan rakaat pertama dengan tidak membaca doa iftitah.',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '14. Setelah i\'tidal pada rakaat kedua, muslim bisa membaca doa qunut sebelum beranjak untuk posisi sujud pertama di rakaat kedua. Berikut bacaannya:',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'اَللّهُمَّ اهْدِنِىْ فِيْمَنْ هَدَيْتَ وَعَافِنِى فِيْمَنْ عَافَيْتَ وَتَوَلَّنِىْ فِيْمَنْ تَوَلَّيْتَ وَبَارِكْ لِىْ فِيْمَا اَعْطَيْتَ وَقِنِيْ شَرَّ مَاقَضَيْتَ، فَاِنَّكَ تَقْضِىْ وَلاَ يُقْضَى عَلَيْكَ وَاِنَّهُ لاَ يَذِلُّ مَنْ وَالَيْتَ وَلاَ يَعِزُّ مَنْ عَادَيْتَ تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ فَلَكَ الحَمْدُ عَلَى مَا قَضَيْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ وَصَلَّى اللهُ عَلَى سَيِّدَنَا مُحَمَّدٍ النَّبِيِّ اْلاُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Bacaan latin: Allahummah dini fii man hadait, wa \'afini fiman \'afait, wa tawallani fi man tawallait, wa barik li fi ma a\'thait, wa qini syarra ma qadhait, fa innaka taqdhi wa la yuqdha \'alaik, wa innahu la yazillu man wa lait, wa la ya\'izzu man \'adait, tabarakta rabbana wa ta\'alait, fa lakal hamdu a\'la ma qadhait, wa astagfiruka wa atubu ilaik, wa shallallahu \'ala sayyidina muhammadin nabiyyil ummiyyi wa \'ala alihi wa shahbihi wa sallam.\n\nArtinya: "Ya Allah tunjukkanlah aku sebagaimana mereka yang telah Engkau beri petunjuk. Berilah kesehatan kepadaku sebagaimana mereka yang telah Engkau berikan kesehatan. Peliharalah aku sebagaimana orang-orang yang telah Engkau lindungi. Berikanlah keberkahan kepadaku pada apa yang telah Engkau berikan. Selamatkanlah aku dari bahaya kejahatan yang telah Engkau tentukan. Engkaulah yang menghukum dan bukan dihukum. Tidak hina orang yang Engkau jadikan pemimpin. Tidak mulia orang yang Engkau musuhi. Maha Suci Engkau wahai Tuhan kami dan Maha Tinggi. Bagi-Mu segala pujian di atas apa yang Engkau tentukan. Aku memohon ampun kepada-Mu dan bertaubat kepada-MU. Semoga Allah mencurahkan rahmat dan karunia atas junjungan kami Nabi Muhammad SAW, keluarga, dan para sahabatnya."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '15. Setelah membaca doa qunut, lanjut dengan sujud kedua pada rakat kedua, dilanjutkan dengan duduk tahasyud akhir dengan posisi tawarruk dan membaca tasyahud, serta sholawat. Jari telunjuk membuat isyarat mengacung/menunjuk saat sampai bacaan "illallaah..." hingga salam.',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ ِللهِ ، السَّلاَمُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللهِ وَبَرَكاَتُهُ السَّلاَمُ عَلَيْنَا وَعَلَى عِبَادِ اللهِ الصَّالِحِيْنَ . أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ الله وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُوْلُ الله. اَلَّلهُمَّ صَلِّ عَلَي سَيِّدِنَا مُحَمّدْ وعلى آلِ  عَلَي سَيِّدِنَا مُحَمَّد كَمَا صَلَّبْتَ عَلَى إِبْرَاهِيْمَ وَعَلَى آلِ إِبْرَاهِيْمَ وَبَارِكْ عَلعَلَي سَيِّدِنَا مُحَمَّدٍ وَعَلَى عَلَي سَيِّدِنَا آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيْمَ وَعَلَى آلِ إِبْرَاهِيْمَ فِيْ الْعَالَمِيْنَ إِنَّكَ حَمِيْدٌ مَجِيْد',
                              style: arabicFont,
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Attahiyyaatul mubaarakaatush shalawaatuth thayyibatul lillaah, Assalaamu’alaika ayyuhan nabiyyu warahmatullaahi wabarakaatuh, Assalaamu’alainaa wa’alaa ‘ibaadillaahish shaalihiin. Asyhadu allaa ilaaha illallaah, Waasyhadu anna Muhammadar rasuulullaah. Allahhumma shalli ‘alaa Muhammad wa \'alaa aali Muhammad, kamaa shallaita \'alaa Ibraahim, wa \'alaa aali Ibraahim. Wabaarik \‘alaa Muhammad, wa \'alaa aali Muhammad, kamaa baarakta \'alaa Ibraahim, wa \'alaa aali Ibraahim. Fil \'aalamiina innaka hamiidum majiid.',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Artinya: "Ya Allah, limpahi lah rahmat atas keluarga Nabi Muhammad, seperti rahmat yang Engkau berikan kepada Nabi Ibrahim dan keluarganya. Dan limpahi lah berkah atas Nabi Muhammad beserta para keluarganya, seperti berkah yang Engkau berikan kepada Nabi Ibrahim dan keluarganya, Engkau lah Tuhan yang sangat terpuji lagi sangat mulia diseluruh alam."',
                              style: subtitleFont,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '15. Salam\n\nMenoleh ke kanan dan kiri sambil mengucapkan "Assalamu\'alaikum Wa Rohmatullah"',
                      style: subtitleFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
