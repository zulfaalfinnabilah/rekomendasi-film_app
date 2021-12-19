import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Komedia extends StatefulWidget {
  const Komedia({Key key}) : super(key: key);

  @override
  _KomediaState createState() => _KomediaState();
}

class _KomediaState extends State<Komedia> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BMjNmM2NkNjQtNDY3Yi00N2FlLWIwOTMtZmRhNDBhZmE3NzA2XkEyXkFqcGdeQXVyMTAxNDM1MDg@._V1_.jpg',
        title: 'Hell Bank Presents: Running Ghost (2020)',
        desc:
            'Aktor sekaligus sutradara Singapura, Mark Lee’s Hell Bank Presents: Running Ghost, film thriller komedi berbahasa Kanton Hong Kong yang menampilkan aktor Hong Kong Wong You Nam dan Cecilia So'),
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BZjA3N2ZjYjItYTliNS00NGQzLTg2OGMtZjA4YTY3NDA3ZTMwXkEyXkFqcGdeQXVyMzA3NzUyODk@._V1_.jpg',
        title: 'Our Christmas Journey (2021)',
        desc:
            'Ketika seorang ibu tunggal dan putranya yang masih remaja dengan autisme mengalami persimpangan jalan selama Natal, dia harus belajar untuk melepaskan sehingga dia dapat berkembang ketika dia menemukan penyembuhan jantungnya sendiri dengan cara yang tidak terduga'),
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BM2Q4YzUxMjYtNDJhZi00MjZhLWFhYmMtOWExNzJiZTAyY2NlXkEyXkFqcGdeQXVyMzU0MDMzNw@@._V1_.jpg',
        title: 'A California Christmas: City Lights (2021)',
        desc:
            'Mengikuti Callie dan Joseph satu tahun setelah mereka jatuh cinta, sekarang menjalankan peternakan sapi perah dan kilang anggur, tetapi romansa mereka terancam ketika kewajiban bisnis dan keluarga memanggil Joseph kembali ke kota.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/en/5/5d/Rumble_2021_film_poster.png',
        title: 'Rumble (2021)',
        desc:
            'Di dunia di mana gulat monster adalah olahraga global dan monster adalah atlet superstar, remaja Winnie berusaha mengikuti jejak ayahnya dengan melatih monster yang diunggulkan menjadi juara.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BZDYzZDA3OGMtNGQwMS00YTYzLTkxZDItZDFlNDllZjNkNzNmXkEyXkFqcGdeQXVyMTIyNjQ1OTMy._V1_.jpg',
        title: 'Caution, Hazardous Wife: The Movie (2021)',
        desc:
            'Di akhir serial TV dengan nama yang sama, terungkap bahwa sang suami bekerja untuk Biro Keamanan Publik, dan pernikahan mereka adalah kedok untuk membuatnya tetap di bawah pengawasan. Terlepas dari misinya, dia jatuh cinta pada Nami dan mencoba meyakinkannya untuk tidak terlibat dalam urusan orang lain. Dia sedang dipantau sebagai risiko keamanan tingkat negara bagian, dan biro tidak mau mentolerir masalah lagi darinya. Namun, untuk menyelamatkan seorang teman, Nami keluar dari rumah dan mempertaruhkan semua yang dia miliki untuk menghadapi musuh. Ketika dia pulang, dia menemukan suaminya menodongkan pistol padanya! Sebuah tembakan bergema melalui lingkungan kelas atas yang tenang…Film ini melanjutkan akhir kontroversial dari serial drama ini!!'),
    CardItem2(
        urlImage: 'https://i.mydramalist.com/j4J0zf.jpg',
        title: 'U Motherbaker',
        desc:
            'A Taiwanese family comedy that reflect the daily culture of the people and also the problem of the transformation of a traditional cake shop. It discusses parent-child relationship, problems between mother in law and wife, the gap between generations and the dilema of maintaining tradition or modernization.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Komedi'),
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
