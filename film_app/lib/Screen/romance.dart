import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Romance extends StatefulWidget {
  const Romance({Key key}) : super(key: key);

  @override
  _RomanceState createState() => _RomanceState();
}

class _RomanceState extends State<Romance> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://www.themoviedb.org/t/p/w500/gwyriT9NvDgbG3V0BBYeV2B9Uh3.jpg',
        title: 'Just Add Romance (2020)',
        desc:
            'Ketika Carly dan Jason, kebalikannya, bersaing di acara memasak terkenal untuk mendapatkan kesempatan di restoran mereka sendiri, apa yang lebih penting – karir kuliner mereka atau potensi cinta mereka?'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/en/thumb/6/6a/My_secret_romance_p1.jpg/250px-My_secret_romance_p1.jpg',
        title: 'My Secret Romance',
        desc:
            'Cha Jin-Wook adalah putra dari keluarga kaya. Keluarganya menjalankan perusahaan besar. Cha Jin-Wook hanya mengejar cinta jangka pendek. Dia bertemu Lee Yoo-Mi dan berubah. Lee Yoo-Mi belum pernah punya pacar sebelumnya.'),
    CardItem(
        urlImage: 'https://asianwiki.com/images/e/ec/Radio_Romance-P1.jpg',
        title: 'Radio Romance',
        desc:
            'Song Geurim adalah penulis program radio yang tidak berbakat menulis. Dia memiliki hasrat, inisiatif, dan dorongan, tetapi karena kurangnya keterampilan menulis, dia masih menjadi asisten penulis. Ketika dia masih muda, radio adalah satu-satunya hal di dunia yang bisa dia bagi dengan ibunya yang buta. Dia terhibur oleh suara radio dan sangat menyukainya, jadi dia menjadi penulis. Ketika program radionya berada di ambang pembatalan, dia berhasil memerankan aktor top Ji Suho, yang tidak bisa melakukan apa pun tanpa naskah.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage: 'https://i.mydramalist.com/dkrdD_4f.jpg',
        title: 'Write Your Destiny',
        desc:
            'fantasi romansa antara dewa yang menulis takdir orang, dan seseorang yang menjalani kehidupan itu.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BOTA1MzAyZDYtNjhlZC00Mzc0LTgzNTItOTA3YzdiOWM5N2M4XkEyXkFqcGdeQXVyNTgxODY5ODI@._V1_.jpg',
        title: 'World Famous Lover (2020)',
        desc:
            'Penggabungan dari empat kisah cinta yang berbeda: Seenayya dan Suvarna, pasangan kelas menengah di sebuah kota kecil; Gautham, seorang anak muda yang sangat keren yang bermesraan di jalanan Paris dengan pacarnya Iza, Pemimpin Serikat Srinu jatuh cinta dengan bos wanitanya, dan romansa kampus pertama.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BYmM3YzhlNzQtZDhmOS00MGRmLWE1MzYtMmY4MzM4ODU2MzIwXkEyXkFqcGdeQXVyMTE5NTk2MzI4._V1_.jpg',
        title: 'Classic Again (2020)',
        desc:
            'Dalam cinta segitiga yang secara ajaib mencerminkan romansa ibunya bertahun-tahun yang lalu, seorang wanita muda membiarkan hatinya memimpin.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Romance'),
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
