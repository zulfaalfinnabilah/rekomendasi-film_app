import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Horor extends StatefulWidget {
  const Horor({Key key}) : super(key: key);

  @override
  _HororState createState() => _HororState();
}

class _HororState extends State<Horor> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BYjRiOTE4NmQtOTY5Yy00ODdmLTgyZWQtMjcxNjgwNGI0ZTUyXkEyXkFqcGdeQXVyMzU2OTc4MzU@._V1_.jpg',
        title: 'Horror Noire (2021)',
        desc:
            'Menggali seabad film bergenre yang secara bergantian dimanfaatkan, dikarikatur, dieksploitasi, dikesampingkan, dan akhirnya merangkul mereka, inilah sejarah tak terhitung orang Amerika kulit hitam di Hollywood melalui hubungan mereka dengan genre horor'),
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BYzhhNzA3YmEtMjlkMy00YWI5LTkxODctMTA3YWQ2NzM0YmVhXkEyXkFqcGdeQXVyMjM4MTU4NjQ@._V1_FMjpg_UX1000_.jpg',
        title: 'The Legend of Jack and Jill (2021)',
        desc:
            'Sebuah horor menceritakan kembali sajak anak-anak Jack dan Jill. Sekelompok teman yang berduka karena kehilangan baru-baru ini bertemu satu sama lain hanya untuk mengetahui bahwa mereka sedang diburu oleh Jack dan Jill.'),
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BODU4MDc0ODItYWRmZC00ZDA3LWI5ODktZWJkMThlZmY4N2NlXkEyXkFqcGdeQXVyMTU3MDgyNjY@._V1_FMjpg_UX1000_.jpg',
        title: 'Scare Us (2021)',
        desc:
            'Sebuah antologi horor mengerikan yang terdiri dari lima cerita pendek, ditulis oleh sekelompok calon penulis yang tidak mungkin, di Sugarton – sebuah kota kecil yang diganggu oleh kembalinya seorang pembunuh berantai yang terkenal, dijuluki “Cutthroat.” Mereka datang untuk berbagi cerita menakutkan mereka (dengan satu sama lain dan pemilik toko buku, Peter, yang memimpin kelompok), tetapi segera menemukan bahwa mereka telah menjadi bintang dari kisah bengkok pembunuh yang sakit itu sendiri')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/id/7/72/Hey_Ghost%2C_Let%27s_Fight_-_Poster.jpg',
        title: 'Let’s Fight Ghost',
        desc:
            'Sebuah komedi kohabitasi tentang hantu seorang gadis SMA yang telah meninggal selama 5 tahun dan seorang mahasiswa pengusir setan dengan kemampuan untuk melihat dan mendengar hantu. Apa yang dia temukan selama bertahun-tahun adalah bahwa dia dapat menyentuh mereka dan melawan mereka, jadi ketika dia membutuhkan pekerjaan paruh waktu dan tidak dapat menemukan pekerjaan dengan bayaran yang cukup, dia mulai memasang iklan online sebagai pengusir setan untuk disewa. Iklannya: “Akan berhadapan dengan hantu Anda. Peluang menang: hantu perawan 80%, hantu bujangan 40%, hantu anak 97%, sisanya 50%. ” Suatu malam dia pergi bekerja dan berhadapan dengan hantu sekolahan, dan selama perkelahian, mereka secara tidak sengaja berciuman dan percikan api. “'),
    CardItem2(
        urlImage:
            'https://media.suara.com/pictures/original/2021/07/17/20477-poster-serial-chucky.jpg',
        title: 'Chucky',
        desc:
            'Setelah boneka Chucky antik muncul di penjualan halaman pinggiran kota, sebuah kota Amerika yang indah dilemparkan ke dalam kekacauan ketika serangkaian pembunuhan mengerikan mulai mengungkap kemunafikan dan rahasia kota. Sementara itu, kedatangan musuh — dan sekutu — dari masa lalu Chucky mengancam untuk mengungkap kebenaran di balik pembunuhan, serta asal-usul boneka iblis yang tak terhitung.'),
    CardItem2(
        urlImage:
            'https://assets.jalantikus.com/assets/cache/560/700/userfiles/2021/10/22/poster-locke-key-season-2-7fd94.jpg',
        title: 'Locke & Key Season 2',
        desc:
            'Tiga saudara kandung yang pindah ke tanah leluhur mereka setelah pembunuhan mengerikan ayah mereka menemukan kunci ajaib rumah baru mereka, yang harus digunakan untuk melawan makhluk jahat yang menginginkan kunci dan kekuatan mereka.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Horor'),
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
