import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Pendidikan extends StatefulWidget {
  const Pendidikan({Key key}) : super(key: key);

  @override
  _PendidikanState createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://strivetoengage.files.wordpress.com/2014/05/sokola_rimba.jpg',
        title: 'Sokolah rimba',
        desc:
            'Butet meninggalkan karirnya yang tengah menanjak untuk mengajar baca dan tulis pada anak-anak di sebuah suku pedalaman. Usahanya sia-sia ketika ia dituduh menyebabkan tewasnya salah satu warga.'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/1/17/Laskar_Pelangi_film.jpg',
        title: 'Laskar Pelangi',
        desc:
            'menceritakan tentang 10 anak yang bersekolah di sebuah pondok sekolah dasar, di Belitong. Bersetting pada tahun 1970-an, Ikal adalah seorang siswa di sekolah desa termiskin di pulau Belitong Indonesia. '),
    CardItem(
        urlImage:
            'https://cdn-production-thumbor-vidio.akamaized.net/0ZGs7EiH25P-lKchFLUWyr8Jr4Y=/filters:quality(70)/vidio-web-prod-film/uploads/film/image_portrait/1019/cahaya-dari-timur-beta-maluku-e25d27.jpg',
        title: 'Cahaya dari timur beta maluku',
        desc:
            'Sani Tawainella (Chicco Jericho) ingin menyelamatkan anak-anak di kampungnya dari konflik agama yang terjadi di Ambon melalui sepak bola. Di tengah kesulitan hidup serta pilihan antara keluarga atau tim sepakbolanya, Sani ditugaskan membawa timnya mewakili Maluku di kejuaraan nasional. Namun keputusannya membaurkan anak-anak yang berbeda agama dalam satu tim justru menyebabkan perpecahan. Sanggupkah Sani melalui semua ini dan membawa cerita baik bagi Maluku?')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1331437600l/13520291.jpg',
        title: 'Negeri 5 menara',
        desc:
            'Alif lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau. Tiba-tiba saja dia harus naik bus tiga hari tiga malam melintasi punggung Sumatera dan Jawa menuju sebuah desa di pelosok Jawa Timur. Ibunya ingin dia menjadi Buya Hamka walau Alif ingin menjadi Habibie. Dengan setengah hati dia mengikuti perintah Ibunya: belajar di pondok. Di kelas hari pertamanya di Pondok Madani (PM), Alif terkesima dengan "mantera" sakti man jadda wajada. Siapa yang bersungguh-sungguh pasti sukses. Dia terheran-heran mendengar komentator sepakbola berbahasa Arab, anak menggigau dalam bahasa Inggris, merinding mendengar ribuan orang melagukan Syair Abu Nawas dan terkesan melihat pondoknya setiap pagi seperti melayang di udara. Dipersatukan oleh hukuman jewer berantai, Alif berteman dekat dengan Raja dari Medan, Said dari Surabaya, Dulmajid dari Sumenep, Atang dari Bandung dan Baso dari Gowa. Di bawah menara masjid yang menjulang, mereka berenam kerap menunggu maghrib sambil menatap awan lembayung yang berarak pulang ke ufuk. Di mata belia mereka, awan-awan itu menjelma menjadi negara dan benua impian masing-masing. Kemana impian jiwa muda ini membawa mereka?'),
    CardItem2(
        urlImage:
            'https://inc.mizanstore.com/aassets/img/com_cart/produk/covND-004.jpg',
        title: 'Sepatu dahlan ',
        desc:
            '“Hidup, bagi orang miskin, harus dijalani apa adanya,” begitulah prinsip Dahlan. ... Kemiskinan yang dirasakannya, tidak menyurutkan semangat Dahlan untuk tetap bersekolah meski harus bertelanjang kaki, berjalan puluhan kilometer untuk sampai di pesantren Takeran. Dan tak jarang kakinya melepuh bahkan lecet.'),
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
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Pendidikan'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                  child: Divider(
                color: Colors.black,
                height: 36,
              )),
              Container(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, _) => SizedBox(width: 10),
                  itemBuilder: (context, index) => buildCard(items[index]),
                ),
              ),
              Container(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, _) => SizedBox(width: 10),
                  itemBuilder: (context, index) => buildCard2(items2[index]),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  child: Divider(
                color: Colors.black,
                height: 36,
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    CardItem item,
  ) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      );

  Widget buildCard2(
    CardItem2 item,
  ) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
                                builder: (context) => DetailRecom2(item: item),
                              ),
                            )),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      );
}
