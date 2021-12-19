import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Animasi extends StatefulWidget {
  const Animasi({Key key}) : super(key: key);

  @override
  _AnimasiState createState() => _AnimasiState();
}

class _AnimasiState extends State<Animasi> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://m.media-amazon.com/images/I/714MCV1nRyL._AC_SY445_.jpg',
        title: 'Shaun the Sheep: The Flight Before Christmas (2021)',
        desc:
            'Kegembiraan musiman Shaun berubah menjadi kekecewaan ketika serangan rumah pertanian untuk mendapatkan stoking yang lebih besar untuk kawanan domba secara tidak sengaja menyebabkan Timmy hilang. Bisakah Shaun mendapatkan kembali Timmy sebelum dia menjadi hadiah orang lain?'),
    CardItem(
        urlImage:
            'https://mydirtsheet.files.wordpress.com/2021/05/mitchellsuwndnkxkeyxkfqcgdeqxvymta1otcyndq4._v1_.jpg',
        title: 'The Mitchells vs. The Machines (2021)',
        desc:
            'Perjalanan keluarga yang unik dan disfungsional berubah ketika mereka menemukan diri mereka di tengah kiamat robot dan tiba-tiba menjadi harapan terakhir umat manusia yang paling tidak mungkin.'),
    CardItem(
        urlImage:
            'https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/Diary_of_a_Wimpy_Kid_%282021%29_Official_Poster.jpg/220px-Diary_of_a_Wimpy_Kid_%282021%29_Official_Poster.jpg',
        title: 'Diary of a Wimpy Kid (2021)',
        desc:
            'Greg Heffley adalah anak kurus tapi ambisius dengan imajinasi aktif dan rencana besar untuk menjadi kaya dan terkenal – dia hanya harus bertahan di sekolah menengah dulu.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://assets-a1.kompasiana.com/items/album/2021/11/30/the-summit-of-the-gods-film-poster-61a64f2b259d5c6366616732.jpg',
        title: 'he Summit of the Gods (2021)',
        desc:
            'Sebuah pencarian obsesif jurnalis foto untuk kebenaran tentang ekspedisi pertama ke Gunung Everest membawanya untuk mencari seorang pendaki terhormat yang hilang.'),
    CardItem2(
        urlImage:
            'https://zanaplay.com/wp-content/uploads/2021/12/p0ONYt2cw0vPEnZIoOHq1Ki7Ifm-200x300.jpg',
        title: 'Snoopy Presents: For Auld Lang Syne (2021)',
        desc:
            'Setelah mengetahui neneknya tidak akan mengunjungi untuk Natal, Lucy memutuskan untuk menghibur dirinya dengan mengadakan pesta Malam Tahun Baru pamungkas. Sementara itu, Charlie Brown mencoba memenuhi salah satu resolusinya sebelum waktu menunjukkan tengah malam.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BMWMzYWQzNTMtMjI4NS00Y2ZlLWEwMjYtYWY0ZjU4MTQ3YmQ1XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg',
        title: 'Bongee Bear and the Kingdom of Rhythm (2019)',
        desc:
            'Seekor beruang yatim piatu muda bernama Bongee berteman dengan Putri Katrina. Ketika penyihir Bandrilla membaca mantra pada orang-orang Kerajaan mencegah mereka dari melakukan apa yang paling mereka sukai, menari, Bongee Bear berangkat untuk memecahkan mantra.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Animasi'),
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
