import 'package:flutter/material.dart';
import 'package:tuntunan_sholat/shared/theme.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //// Header
              Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/qiblah.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text(
                        'Madrasah Ibtidaiyah XXX',
                        style: titleFont,
                      ),
                      Text(
                        'Sarabau, Cirebon, Jawa Barat.',
                        style: subtitleFont,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'Aplikasi Tuntunan Shalat Fardhu ini dibuat untuk memudahkan murid-murid di Madrasah Ibtidaiyah XXX dalam menghafal bacaan shalat fardhu, terutama bagi yang baru dan sedang belajar shalat fardhu, aplikasi ini juga dibuat untuk memudahkan guru dalam penyampaian materi pembelajarannya agar sumber materi yang dipelajari adalah sumber yang sama. Aplikasi ini juga dilengkapi dengan bacaan-bacaan arabnya, dan bagi yang ingin mendalami bacaan-bacaan shalat fardhu juga kami sertakan dengan terjemahannya. Bacaan-bacaan yang ada dalam aplikasi ini sudah diperiksa dengan teliti oleh pihak kami agar tidak ada kesalahan dalam penulisannya.',
                      style: labelFont.copyWith(letterSpacing: 0.5),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              //// Body

              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ],
    );
  }
}
