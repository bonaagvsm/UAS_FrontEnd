import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_applicationnn/folder/listDekor.dart';
import 'package:flutter_applicationnn/folder/listFotografer.dart';
import 'package:flutter_applicationnn/folder/listGedung.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    "assets/images/promo1.png",
    "assets/images/promo2.png",
    "assets/images/promo3.png",
    "assets/images/promo4.png",
    "assets/images/promo5.png",
    "assets/images/promo7.png",
    "assets/images/promo8.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 228, 228),
      body: ListView(children: [
        Container(
            margin: EdgeInsets.only(
              top: 70,
            ),
            child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: 1000,
                  )),
                );
              },
            )),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          color: Color.fromARGB(255, 216, 216, 216),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Kategori",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: 70,
                        child: Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.all(5.0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListGedungScreen()));
                                },
                                icon: const Icon(
                                  Icons.apartment,
                                  color: Color.fromARGB(255, 94, 94, 94),
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Text("Gedung")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: 70,
                        child: Column(
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(5.0),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ListDekorScreen()));
                              },
                              icon: const Icon(
                                Icons.star_border_outlined,
                                color: Color.fromARGB(255, 94, 94, 94),
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text("Dekorasi")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                padding: EdgeInsets.all(5.0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListFotograferScreen()));
                                },
                                icon: const Icon(
                                  Icons.photo_camera,
                                  color: Color.fromARGB(255, 94, 94, 94),
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Text("Fotografer")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                padding: EdgeInsets.all(5.0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListGedungScreen()));
                                },
                                icon: const Icon(
                                  Icons.more_horiz_outlined,
                                  color: Color.fromARGB(255, 94, 94, 94),
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Text("Lainnya")
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Paket Murah",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("Lihat Selengkapnya"),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 200,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Card(
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/Delavener.png",
                          width: 200,
                          height: 120,
                        ),
                        Title(
                          color: Colors.black,
                          child: Text(
                            "De Lavender Decoratioon",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(68, 67, 67, 1),
                                fontSize: 20),
                          ),
                        ),
                        Text("rating: 51"),
                        Text("Rp.10.966.000")
                      ],
                    )),
                  ),
                  Container(
                    child: Card(
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/adimulia.png",
                          width: 200,
                          height: 120,
                        ),
                        Title(
                          color: Colors.black,
                          child: Text(
                            "Adimulia Hotel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(68, 67, 67, 1),
                                fontSize: 20),
                          ),
                        ),
                        Text("rating: 51"),
                        Text("Rp.11.000.000")
                      ],
                    )),
                  ),
                  Container(
                    child: Card(
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/OIP.png",
                          width: 200,
                          height: 120,
                        ),
                        Title(
                          color: Colors.black,
                          child: Text(
                            "Maruli Convention Center",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(68, 67, 67, 1),
                                fontSize: 20),
                          ),
                        ),
                        Text("rating: 3.5"),
                        Text("Rp.15.000.000")
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sedang Trending",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text("Lihat Selengkapnya"),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Card(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/images/titanium.png",
                        width: 200,
                        height: 120,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Titanium Medan Decoration",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(68, 67, 67, 1),
                              fontSize: 20),
                        ),
                      ),
                      Text("rating: 5"),
                      Text("Rp.11.000.000")
                    ],
                  )),
                ),
                Container(
                  child: Card(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/images/gdeung.png",
                        width: 200,
                        height: 120,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Gedung Pertemuan Permata Ria",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(68, 67, 67, 1),
                              fontSize: 20),
                        ),
                      ),
                      Text("rating: 5.1"),
                      Text("Rp.12.000.000")
                    ],
                  )),
                ),
                Container(
                  child: Card(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/images/sudut.png",
                        width: 200,
                        height: 120,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Sudut Creative Studio",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(68, 67, 67, 1),
                              fontSize: 20),
                        ),
                      ),
                      Text("rating: 51"),
                      Text("dibawah 300k")
                    ],
                  )),
                ),
                Container(
                  child: Card(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/images/adimulia.png",
                        width: 200,
                        height: 120,
                      ),
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Adimulia Hotel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(68, 67, 67, 1),
                              fontSize: 20),
                        ),
                      ),
                      Text("rating: 51"),
                      Text("Rp.11.000.000")
                    ],
                  )),
                ),
              ],
            ))
      ]),
    );
  }
}
