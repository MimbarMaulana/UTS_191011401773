import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MIMBAR MAULANA IBRAHIM"),
        ),
      ),
      body: GridView.count(
        //widget yang akan ditampilkan dalam 1 baris adalah 2
        crossAxisCount: 2,
        children: [
          //card ditampilkan disini
          //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
          CustomCard(
              title: "satu",
              image:
                  "https://awsimages.detik.net.id/community/media/visual/2020/07/21/10-jenis-warna-baru-1_169.jpeg?w=750&q=90.jpg"),
          CustomCard(
              title: "dua",
              image:
                  "https://awsimages.detik.net.id/community/media/visual/2020/07/21/10-jenis-warna-baru-8_169.jpeg?w=750&q=90.jpg"),
          CustomCard(
              title: "tiga",
              image:
                  "https://awsimages.detik.net.id/community/media/visual/2020/07/21/10-jenis-warna-baru-2_169.jpeg?w=750&q=90.jpg"),
          CustomCard(
              title: "empat",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6TEETPUahrxgTGBEVFtda7lDfv9dNyGgkkQ&usqp=CAU.jpg"),
          CustomCard(
              title: "lima",
              image:
                  "https://awsimages.detik.net.id/community/media/visual/2020/07/21/10-jenis-warna-baru-2_169.jpeg?w=750&q=90.jpg"),
          CustomCard(
              title: "enam",
              image:
                  "https://cdn0-production-images-kly.akamaized.net/PDvIN3r0p-g4QjmAiQw5bO3GPtY=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2214287/original/012183300_1526379359-colors_GH_content_850px.JPG.jpg"),
          CustomCard(
              title: "tujuh",
              image:
                  "https://awsimages.detik.net.id/community/media/visual/2020/07/21/10-jenis-warna-baru-1_169.jpeg?w=750&q=90.jpg"),
          CustomCard(
              title: "delapan",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGsmGIo8U2OMTvA78Usp6RvwV2SKZ6_lBp__4gFCeQyKpz1qsMjo2dDQEPAS0czpITDQ&usqp=CAU.jpg"),
          CustomCard(
              title: "sembilan",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6XplRMqH21zdhi7pVrEQJnhUENC2upyeUfWxXd83e2w83CqoI2HHXz4WjGQrp7y8coUQ&usqp=CAU.jpg"),
          CustomCard(
              title: "sepuluh",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbe88q45lNqvfN33tnjJFr6Php9PA6iSXjaRaYEkOVzJpX4yoGRrO5RYe8P-RDhPEvYP0&usqp=CAU.jpg"),
          CustomCard(
              title: "sebelas",
              image:
                  "http://1.bp.blogspot.com/_5YqlIFONKxk/SazqDmTYD2I/AAAAAAAAADw/5S9bINmpdvs/s320/a1.jpg.jpg"),
          CustomCard(
              title: "dua belas",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPrz736ikKK-l0VExp2kqzZlkDaUMCvPWOiA&usqp=CAU.jpg"),
        ],
      ),
    );
  }
}

//membuat customcard yang bisa kita panggil setiap kali dibutuhkan
class CustomCard extends StatelessWidget {
  //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
  //parameter ini akan mengisi title dan gambar pada setiap card
  CustomCard({required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        //menambahkan bayangan
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
