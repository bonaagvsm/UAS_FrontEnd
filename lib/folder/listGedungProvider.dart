import 'dart:convert';

import 'package:flutter/material.dart';

class ListGedungProvider extends ChangeNotifier {
  initialData() async {
    setData = hp;
  }

  final hp = {
    "data": [
      {
        "model": "Adimulia Hotel",
        "img":
            "http://www.adimuliahotel.com/galleryproduct_image/750x420_375IMG_8144.JPG",
        "desc":
            "Dengan Kapasitas lebih dari 400 tamu. Golden Hall bisa amenjadi pilihan terbaik untuk kapasitas tamu yang lebih banyak",
        "developer": "Jalan Di Ponegoro No.8 Medan 20112",
        "price": 11500000,
        "rating": 5
      },
      {
        "model": "Maruli Convention Center",
        "img":
            "http://maruliconvention.co.id/wp-content/uploads/2020/10/YCTN4861.jpg",
        "desc":
            "Banyak Menyediakan tempat yang bagus untuk merayakan hari spesial anda",
        "developer": "Jalan Raya Medan, Binjai KM 14,5 Diski",
        "price": 1500000,
        "rating": 4.1
      },
      {
        "model": "Wisma Mahina Center",
        "img":
            "https://th.bing.com/th/id/OIP.ywLxh79y9gsUatzfl6g4_wHaLI?w=187&h=282&c=7&r=0&o=5&dpr=1.2&pid=1.7",
        "desc":
            "Wisma Mahinna Center adalah venue yang sering digunakan untuk acara pernikahan di Medan, kebanyakan yang memilih gedung ini karena gedungnya yang luas dan harganya terjangkau, menjadikan alasan mengapa Wisma Mahinna Center menjadi tempat favorit untuk pernikahan.",
        "developer": "Jl. Rela No.119, Sidorejo, Medan Tembung",
        "price": 10000000,
        "rating": 5
      },
      {
        "model": "Gedung Pertemuan Permata Gria",
        "img":
            "data:image/jpeg;base64,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",
        "desc":
            "Gedung Pertemuan Permata Gria merupakan salah satu yang sering digunakan untuk acara pernikahan, walaupun namanya Gedung Pertemuan, namun gedung ini adalah gedung serbaguna, bisa digunakan untuk berbagai acara, tentunya memiliki kapasitas 900 tamu dan 500 tamu untuk lantai kedua dengan harga yang terjangkau.",
        "developer": "Jl. Pelajar No.146, Teladan Tim.",
        "price": 000000,
        "rating": 3
      },
      {
        "model": "De Lavender Decoration",
        "img":
            "https://th.bing.com/th/id/OIP.ywLxh79y9gsUatzfl6g4_wHaLI?w=187&h=282&c=7&r=0&o=5&dpr=1.2&pid=1.7",
        "desc": "Sense of art decoration",
        "developer": "Jalan mandala tengah nomor 41",
        "price": 10996652,
        "rating": 5
      },
      {
        "model": "Titanium Medan Decoration",
        "img":
            "data:image/jpeg;base64,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",
        "desc": "Dekorasi Keren dengan harga yang terjangkau",
        "developer": "",
        "price": 11000000,
        "rating": 3
      },
      {
        "model": "De Lavender Decoration",
        "img":
            "https://th.bing.com/th/id/OIP.ywLxh79y9gsUatzfl6g4_wHaLI?w=187&h=282&c=7&r=0&o=5&dpr=1.2&pid=1.7",
        "desc": "Sense of art decoration",
        "developer": "Jalan mandala tengah nomor 41",
        "price": 10996652,
        "rating": 5
      },
      {
        "model": "Titanium Medan Decoration",
        "img":
            "data:image/jpeg;base64,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",
        "desc": "Dekorasi Keren dengan harga yang terjangkau",
        "developer": "",
        "price": 11000000,
        "rating": 3
      }
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);
    notifyListeners();
  }

  ubahList(val) {
    if (val == 'hp') {
      setData = hp;
    } else {}
  }
}
