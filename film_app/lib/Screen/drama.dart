import 'package:film_app/Screen/detailrecom.dart';
import 'package:film_app/Screen/detailrecom2.dart';
import 'package:film_app/model/model1.dart';
import 'package:flutter/material.dart';

class Drama extends StatefulWidget {
  const Drama({Key key}) : super(key: key);

  @override
  _DramaState createState() => _DramaState();
}

class _DramaState extends State<Drama> {
  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://foto.kontan.co.id/jgG9KoZotJipTg79Hz3DjCqkb6w=/smart/2021/10/25/888899809p.jpg',
        title: 'Hawkeye',
        desc:
            'Mantan Avenger Clint Barton memiliki misi yang tampaknya sederhana: kembali ke keluarganya untuk Natal. Mungkin? Mungkin dengan bantuan Kate Bishop, pemanah berusia 22 tahun yang bercita-cita menjadi superhero. Keduanya dipaksa untuk bekerja sama ketika kehadiran dari masa lalu Barton mengancam untuk menggagalkan lebih dari semangat pesta.'),
    CardItem(
        urlImage:
            'https://media.matamata.com/thumbs/2021/08/31/88885-serial-thriller-september-instagramatnetflixid/o-img-88885-serial-thriller-september-instagramatnetflixid.jpg',
        title: 'Money Heist Season 5',
        desc:
            'Untuk melakukan perampokan terbesar dalam sejarah, seorang pria misterius bernama Profesor merekrut sekelompok delapan perampok yang memiliki satu karakteristik: tidak ada dari mereka yang rugi. Lima bulan pengasingan – menghafal setiap langkah, setiap detail, setiap kemungkinan – memuncak dalam sebelas hari dikurung di Pabrik Koin dan Perangko Nasional Spanyol, dikelilingi oleh pasukan polisi dan dengan lusinan sandera dalam kekuasaan mereka, untuk mengetahui apakah mereka bunuh diri taruhan akan mengarah ke segalanya atau tidak sama sekali.'),
    CardItem(
        urlImage:
            'https://static.toiimg.com/photo/msid-86670099/Squid%20Game.jpg?86670099',
        title: 'Squid Game',
        desc:
            'Ji Hyuk, seorang agen NIS yang menjadi MIA, kembali setelah satu tahun untuk bergabung dengan tim baru saat dia mencari masa lalunya yang hilang.')
  ];
  List<CardItem2> items2 = [
    CardItem2(
        urlImage:
            'https://cdn.medcom.id/images/content/2021/10/16/1340576/aPjZgcmGCM.jpg',
        title: 'My Name',
        desc:
            'Setelah pembunuhan ayahnya, seorang wanita yang didorong oleh balas dendam menaruh kepercayaannya pada bos kejahatan yang kuat — dan memasuki kepolisian di bawah arahannya.'),
    CardItem2(
        urlImage: 'https://i.mydramalist.com/0pvA6f.jpg',
        title: 'Little Love Song (2019)',
        desc:
            'Sebuah band sekolah menengah populer dibina oleh sebuah perusahaan rekaman yang berbasis di Tokyo. Band ini terlibat dalam kecelakaan mobil, bagaimanapun, menghancurkan banyak harapan. Band ini menerima rekaman demo dari seorang gadis yang tinggal di pangkalan angkatan laut. Mereka dihidupkan kembali.'),
    CardItem2(
        urlImage:
            'https://m.media-amazon.com/images/M/MV5BYzQxNDUzYmEtZGUyOS00NmMyLTkyZjgtYTBiMDEwOGFkMzBlXkEyXkFqcGdeQXVyMTE0MzQwMjgz._V1_.jpg',
        title: 'Autumn Road (2021)',
        desc:
            '10 tahun setelah seorang gadis muda hilang pada malam Halloween, saudara perempuannya kembali ke kampung halaman mereka untuk mencari jawaban. Sepanjang jalan dia menjadi terjerat dengan dua kembar identik misterius yang menjalankan rumah berhantu pinggir jalan kota')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Drama'),
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
