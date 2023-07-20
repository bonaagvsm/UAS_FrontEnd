import 'package:flutter/material.dart';
import 'package:flutter_applicationnn/folder/pembayaran.dart';

class Hotel1 extends StatefulWidget {
  const Hotel1({super.key});

  @override
  State<Hotel1> createState() => _Hotel1State();
}

class _Hotel1State extends State<Hotel1> {
  String dropdownvalue = 'Pernikahan';

  // List of items in our dropdown menu
  var items = [
    'Pernikahan',
    'Ulang Tahun',
    'Perayaan Kantor',
    'Rapat',
    'Lainnya',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deskripsi"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://lh3.googleusercontent.com/proxy/fI6NAF0Qck5gO0m15ezmd1nbwLKO7KJ6B3JKQGAZtvmsPy87Ql9ZBi0S-_UYKlnBVWo-DgRCTWz80KCWnPDD0TY5utWK6fzTuqa7KTRacmOCPQG098D0D9IQaw=s0-d"),
          Column(
            children: [
              Container(
                width: 340,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 175, top: 20),
                      child: Text(
                        "Adimulia Hotel",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Dengan Kapasitas lebih dari 400 tamu. Golden Hall bisa amenjadi pilihan terbaik untuk kapasitas tamu yang lebih banyak"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("harga:",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Rp.11.000.000")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lokasi",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        Text("Jalan Di Ponegoro No.8 Medan 20112")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "pilih Event:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListPembayaran()));
                            },
                            child: Text('Bayar'))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
