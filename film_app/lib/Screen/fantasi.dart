import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Fantasi extends StatefulWidget {
  const Fantasi({Key key}) : super(key: key);

  @override
  _FantasiState createState() => _FantasiState();
}

class _FantasiState extends State<Fantasi> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://srt.subtitleseeker.in/wp-content/uploads/2021/12/StarBeam-Beaming-in-the-New-Year-English-Subtitles-Download.jpg',
        title: 'StarBeam: Beaming in the New Year (2021)',
        desc:
            'Penjahat terbesar Summersette bergabung pada Malam Tahun Baru untuk melawan Zoey dan Tim Beam. Tapi sepupu keren Zara bangkit untuk membantu menyelamatkan hari!'),
    CardItem(
        urlImage:
            'https://i1.wp.com/www.comparesweden.se/wp-content/uploads/2021/07/Spider-Man-No-Way-Home.jpg?resize=746%2C1024&ssl=1',
        title: 'Spider-Man: No Way Home (2021)',
        desc:
            'Peter Parker telah membuka kedoknya dan tidak lagi dapat memisahkan kehidupan normalnya dari risiko tinggi menjadi pahlawan super. Kemusdian dia meminta bantuan dari Doctor Strange, tetapi taruhannya menjadi lebih berbahaya, memaksanya untuk menemukan apa artinya menjadi Spider-Man.'),
    CardItem(
        urlImage:
            'https://images.saymedia-content.com/.image/t_share/MTg1ODIyODM4OTAzNTQ3NTIw/even-mice-belong-in-heaven-2021-review.jpg',
        title: 'Even Mice Belong in Heaven (2021)',
        desc:
            'Sebuah film tentang dua musuh bebuyutan – tikus kecil Whizzy dan Whitebelly si rubah, yang setelah kecelakaan malang, bertemu di surga binatang. Mereka kehilangan naluri alami mereka dan menjadi teman baik. Keinginan mereka untuk tetap bersama setelah mereka kembali ke bumi menjadi kenyataan, tetapi mereka terlahir kembali dalam peran yang berlawanan. Berkat kekuatan persahabatan mereka bahkan dapat mengatasi apa yang tampaknya mustahil. Sub Indo Even Mice Belong in Heaven (2021)')
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
            'Maleficent: Mistress of Evil (2019) xx1 indo xxi. Maleficent dan putri angkatnya Aurora mulai bingung dengan ikatan keluarga rumit yang mengikat mereka saat mereka ditarik ke arah yang berbeda dengan pernikahan yang akan datang, sekutu yang tak terduga, dan pasukan baru yang gelap sedang bermain.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Fantasi'),
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
