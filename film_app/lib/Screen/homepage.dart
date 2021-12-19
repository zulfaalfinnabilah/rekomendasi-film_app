import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/c/cc/Dilan_1991_Film_Poster.jpg',
        title: 'Dilan 1991',
        desc:
            'Dilan (Iqbaal Ramadhan), panglima tempur sebuah geng motor di Bandung awal 90-an, menjalin hubungan dengan seorang siswi baru dari Jakarta bernama Milea (Vanesha Prescilla). Dilan selalu bahagia saat bersama Milea, namun teman-teman geng motor merasa Dilan makin menjauh dari kelompoknya karena Milea. Terjadi peristiwa yang mengerikan, salah satu anggota mereka, Akew (Gusti Rayhan), meninggal akibat dikeroyok oleh sekelompok orang. Peristiwa itu membuat Milea khawatir akan keselamatan Dilan. Milea membuat keputusan untuk berpisah dengan Dilan sebagai peringatan agar Dilan menjauh dari geng motor. Peristiwa Akew menyeret Dilan ke pihak berwajib bersama teman-temannya. Perpisahan yang tadinya hanya gertakan Milea menjadi perpisahan yang berlangsung lama sampai mereka lulus kuliah dan dewasa. Mereka berdua masih membawa perasaan yang sama saat mereka kembali bertemu di reuni, namun masing-masing saat itu sudah memiliki pasangan.'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/1/17/Laskar_Pelangi_film.jpg',
        title: 'Laskar Pelangi',
        desc:
            'Dilan (Iqbaal Ramadhan), panglima tempur sebuah geng motor di Bandung awal 90-an, menjalin hubungan dengan seorang siswi baru dari Jakarta bernama Milea (Vanesha Prescilla). Dilan selalu bahagia saat bersama Milea, namun teman-teman geng motor merasa Dilan makin menjauh dari kelompoknya karena Milea. Terjadi peristiwa yang mengerikan, salah satu anggota mereka, Akew (Gusti Rayhan), meninggal akibat dikeroyok oleh sekelompok orang. Peristiwa itu membuat Milea khawatir akan keselamatan Dilan. Milea membuat keputusan untuk berpisah dengan Dilan sebagai peringatan agar Dilan menjauh dari geng motor. Peristiwa Akew menyeret Dilan ke pihak berwajib bersama teman-temannya. Perpisahan yang tadinya hanya gertakan Milea menjadi perpisahan yang berlangsung lama sampai mereka lulus kuliah dan dewasa. Mereka berdua masih membawa perasaan yang sama saat mereka kembali bertemu di reuni, namun masing-masing saat itu sudah memiliki pasangan.'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/6/6d/Frozen_II_%282019_poster%29.jpg',
        title: 'Frozen II',
        desc:
            'Dilan (Iqbaal Ramadhan), panglima tempur sebuah geng motor di Bandung awal 90-an, menjalin hubungan dengan seorang siswi baru dari Jakarta bernama Milea (Vanesha Prescilla). Dilan selalu bahagia saat bersama Milea, namun teman-teman geng motor merasa Dilan makin menjauh dari kelompoknya karena Milea. Terjadi peristiwa yang mengerikan, salah satu anggota mereka, Akew (Gusti Rayhan), meninggal akibat dikeroyok oleh sekelompok orang. Peristiwa itu membuat Milea khawatir akan keselamatan Dilan. Milea membuat keputusan untuk berpisah dengan Dilan sebagai peringatan agar Dilan menjauh dari geng motor. Peristiwa Akew menyeret Dilan ke pihak berwajib bersama teman-temannya. Perpisahan yang tadinya hanya gertakan Milea menjadi perpisahan yang berlangsung lama sampai mereka lulus kuliah dan dewasa. Mereka berdua masih membawa perasaan yang sama saat mereka kembali bertemu di reuni, namun masing-masing saat itu sudah memiliki pasangan.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://mediagoodies.com/wp-content/uploads/2021/12/Back-to-the-Outback-2021.jpg',
        title: 'Back to the Outback (2021)',
        desc:
            'Bosan dikurung di rumah reptil di mana manusia melongo seperti monster, sekelompok makhluk paling mematikan di Australia merencanakan pelarian dari kebun binatang mereka ke Outback, tempat di mana mereka akan cocok tanpa dihakimi. Sub Indo Back to the Outback (2021)'),
    CardItem2(
        urlImage:
            'https://www.wellgousa.com/sites/default/files/2021-10/TheMonkeyKingReborn_WellGoUSA_ChineseAnimation_HomeEnt_812x1200.jpg',
        title: 'The Monkey King: Reborn (2021)',
        desc:
            'Pada awal kekacauan, iblis pertama di dunia lahir, bernama Yuandi, dan dipuja sebagai nenek moyang iblis. Ribuan tahun kemudian, mantan raja iblis Sun Wukong diselamatkan dari Gunung Lima Elemen oleh Biksu Tang, yang berjanji untuk melindunginya dan pergi ke Barat untuk mendapatkan kitab suci.'),
    CardItem2(
        urlImage:
            'https://images.moviesanywhere.com/87bf16b02771b6dafa0e9e084f9594e8/82a61ec3-c114-4c6f-be97-dc8702d54253.jpg',
        title: 'Maleficent: Mistress of Evil (2019)',
        desc:
            'Maleficent: Mistress of Evil (2019) xx1 indo xxi. Maleficent dan putri angkatnya Aurora mulai bingung dengan ikatan keluarga rumit yang mengikat mereka saat mereka ditarik ke arah yang berbeda dengan pernikahan yang akan datang, sekutu yang tak terduga, dan pasukan baru yang gelap sedang bermain.'),
    CardItem2(
        urlImage:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1331437600l/13520291.jpg',
        title: 'Negeri 5 menara',
        desc:
            'Alif lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau. Tiba-tiba saja dia harus naik bus tiga hari tiga malam melintasi punggung Sumatera dan Jawa menuju sebuah desa di pelosok Jawa Timur. Ibunya ingin dia menjadi Buya Hamka walau Alif ingin menjadi Habibie. Dengan setengah hati dia mengikuti perintah Ibunya: belajar di pondok. Di kelas hari pertamanya di Pondok Madani (PM), Alif terkesima dengan "mantera" sakti man jadda wajada. Siapa yang bersungguh-sungguh pasti sukses. Dia terheran-heran mendengar komentator sepakbola berbahasa Arab, anak menggigau dalam bahasa Inggris, merinding mendengar ribuan orang melagukan Syair Abu Nawas dan terkesan melihat pondoknya setiap pagi seperti melayang di udara. Dipersatukan oleh hukuman jewer berantai, Alif berteman dekat dengan Raja dari Medan, Said dari Surabaya, Dulmajid dari Sumenep, Atang dari Bandung dan Baso dari Gowa. Di bawah menara masjid yang menjulang, mereka berenam kerap menunggu maghrib sambil menatap awan lembayung yang berarak pulang ke ufuk. Di mata belia mereka, awan-awan itu menjelma menjadi negara dan benua impian masing-masing. Kemana impian jiwa muda ini membawa mereka?'),
    CardItem2(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/f/fa/Jembatan_Pensil.jpg',
        title: 'Jembatan pensil',
        desc:
            'Ini adalah kisah perjuangan Inal, Nia, Aska, Yanti, dan Ondeng untuk terus mendapatkan pendidikan di sebuah sekolah gratis'),
    CardItem2(
        urlImage:
            'https://images.moviesanywhere.com/87bf16b02771b6dafa0e9e084f9594e8/82a61ec3-c114-4c6f-be97-dc8702d54253.jpg',
        title: 'Maleficent: Mistress of Evil (2019)',
        desc:
            'Maleficent: Mistress of Evil (2019) xx1 indo xxi. Maleficent dan putri angkatnya Aurora mulai bingung dengan ikatan keluarga rumit yang mengikat mereka saat mereka ditarik ke arah yang berbeda dengan pernikahan yang akan datang, sekutu yang tak terduga, dan pasukan baru yang gelap sedang bermain.'),
    CardItem2(
        urlImage:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1331437600l/13520291.jpg',
        title: 'Negeri 5 menara',
        desc:
            'Alif lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau. Tiba-tiba saja dia harus naik bus tiga hari tiga malam melintasi punggung Sumatera dan Jawa menuju sebuah desa di pelosok Jawa Timur. Ibunya ingin dia menjadi Buya Hamka walau Alif ingin menjadi Habibie. Dengan setengah hati dia mengikuti perintah Ibunya: belajar di pondok. Di kelas hari pertamanya di Pondok Madani (PM), Alif terkesima dengan "mantera" sakti man jadda wajada. Siapa yang bersungguh-sungguh pasti sukses. Dia terheran-heran mendengar komentator sepakbola berbahasa Arab, anak menggigau dalam bahasa Inggris, merinding mendengar ribuan orang melagukan Syair Abu Nawas dan terkesan melihat pondoknya setiap pagi seperti melayang di udara. Dipersatukan oleh hukuman jewer berantai, Alif berteman dekat dengan Raja dari Medan, Said dari Surabaya, Dulmajid dari Sumenep, Atang dari Bandung dan Baso dari Gowa. Di bawah menara masjid yang menjulang, mereka berenam kerap menunggu maghrib sambil menatap awan lembayung yang berarak pulang ke ufuk. Di mata belia mereka, awan-awan itu menjelma menjadi negara dan benua impian masing-masing. Kemana impian jiwa muda ini membawa mereka?'),
    CardItem2(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/f/fa/Jembatan_Pensil.jpg',
        title: 'Jembatan pensil',
        desc:
            'Ini adalah kisah perjuangan Inal, Nia, Aska, Yanti, dan Ondeng untuk terus mendapatkan pendidikan di sebuah sekolah gratis')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/vactor1.png'),
                      fit: BoxFit.fitHeight)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 20,
                    top: 120,
                    child: Text(
                      'WELCOME',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 190,
                    child: Text(
                      'Recommended Movies',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 260, left: 10, right: 10),
                      child: Container(
                        height: 60,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          separatorBuilder: (context, _) => SizedBox(width: 10),
                          itemBuilder: (context, index) =>
                              buildCard2(items2[index]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, _) => SizedBox(width: 10),
                itemBuilder: (context, index) => buildCard(items[index]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCard(
    CardItem item,
  ) =>
      Container(
        width: 180,
        child: Column(
          children: [
            Expanded(
              child: Material(
                child: Ink.image(
                  image: NetworkImage(
                    item.urlImage,
                  ),
                  fit: BoxFit.cover,
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetaileRecom(item: item),
                            ),
                          )),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 24,
              ),
            )
          ],
        ),
      );
  Widget buildCard2(
    CardItem2 item,
  ) =>
      Container(
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(
                        item.urlImage,
                      ),
                      fit: BoxFit.cover,
                      child: InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailRecom2(item: item),
                                ),
                              )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
