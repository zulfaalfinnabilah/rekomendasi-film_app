import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Petualangan extends StatefulWidget {
  const Petualangan({Key key}) : super(key: key);

  @override
  _PetualanganState createState() => _PetualanganState();
}

class _PetualanganState extends State<Petualangan> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://static.wikia.nocookie.net/jurassicpark/images/8/87/Jurassic-World-Camp-Cretaceous-Netflix-Series.jpg/revision/latest/scale-to-width-down/250?cb=20210325222309',
        title: 'Jurassic World: Camp Cretaceous Season 4',
        desc:
            'Enam remaja yang menghadiri kamp petualangan di seberang Isla Nublar harus bersatu untuk bertahan hidup ketika dinosaurus mendatangkan malapetaka di pulau itu.'),
    CardItem(
        urlImage:
            'https://resizing.flixster.com/qxvy4usyr6kFqhwSWRWoGZFOCPo=/206x305/v2/https://resizing.flixster.com/nqrkQxjCjkY83IygGYcWpDUp_gc=/ems.ZW1zLXByZC1hc3NldHMvbW92aWVzL2Y2YmJiZjVmLTBmOGQtNDk3ZS1iYWU5LThlNTZhZDRhZTZkNC5qcGc=',
        title: 'David and the Elves (2021)',
        desc:
            'Natal semakin dekat, tetapi ini bukan saat yang menyenangkan bagi David. Setelah pindah ke kota besar, orang tuanya terjebak dengan pekerjaan dan melupakan makna Natal. David memutuskan untuk mengubahnya'),
    CardItem(
        urlImage:
            'https://inc.mizanstore.com/aassets/img/com_cart/produk/covUC-58.jpg',
        title: 'Dan Brown’s The Lost Symbol',
        desc:
            'Petualangan awal ahli simbol muda Harvard Robert Langdon, yang harus memecahkan serangkaian teka-teki mematikan untuk menyelamatkan mentornya yang diculik dan menggagalkan konspirasi global yang mengerikan.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BNjE1OTczNWEtYjNmOS00YjVlLTg1NjgtOTlkZTAwODgyMDBjXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg',
        title: 'Double Dad (2021)',
        desc:
            'Saat ibunya pergi, seorang remaja menyelinap keluar dari komunitas hippie tempat dia tinggal dan memulai petualangan yang mengubah hidup untuk menemukan siapa ayahnya.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BNzY2OTYwNjItYzczMC00YjYzLThmY2MtZGFhNmVmMzUzN2QyXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg',
        title: 'PAW Patrol: The Movie (2021)',
        desc:
            'Ryder dan anak-anak anjing dipanggil ke kota petualangan untuk menghentikan Walikota Humdinger dari mengubah metropolis yang ramai menjadi keadaan kekacauan. Sub Ind PAW Patrol: The Movie (2021)'),
    CardItem2(
        urlImage:
            'https://asset.kompas.com/crops/gXvO6EdfX2qu9QfPoWFmjDMRhbc=/22x0:915x595/750x500/data/photo/2021/10/11/6163d1dddf7d7.png',
        title: 'The Baby-Sitters Club Season 2',
        desc:
            'Dalam seri buku tercinta kontemporer ini, lima sahabat meluncurkan bisnis penitipan bayi yang mengutamakan kesenangan dan petualangan.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Petualangan'),
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
