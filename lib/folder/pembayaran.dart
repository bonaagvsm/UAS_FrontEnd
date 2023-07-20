import 'package:flutter/material.dart';
import 'package:flutter_applicationnn/folder/payment.dart';

class ListPembayaran extends StatefulWidget {
  const ListPembayaran({super.key});

  @override
  State<ListPembayaran> createState() => _ListPembayaranState();
}

class _ListPembayaranState extends State<ListPembayaran> {
  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pembayaran"),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: 350,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Checkbox(value: true, onChanged: ((value) => {})),
                  Image.network(
                    "data:image/jpeg;base64,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",
                    width: 150,
                    height: 100,
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Nama Gedung:"),
                    Text(
                      "Adimulia Hotel",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Tanggal : '),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: InputDatePickerFormField(
                            initialDate: _date,
                            firstDate: DateTime(1990),
                            lastDate: DateTime(2050),
                            onDateSubmitted: (date) {
                              setState(() {
                                _date = date;
                                print(_date);
                              });
                            },
                          )),
                          IconButton(
                              onPressed: () async {
                                var res = await showDatePicker(
                                    context: context,
                                    initialDate: _date,
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2050));
                                if (res != null) {
                                  setState(() {
                                    _date = res;
                                  });
                                }
                              },
                              icon: Icon(Icons.date_range))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Payment()));
                              },
                              child: Text('Pilih Metode Pembayaran')),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total :11.000.000",
                            style: TextStyle(fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () => showDialog(
                                context: context,
                                builder: (context) => showAlertDalog(context)),
                            child: Text(
                              'Bayar',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  showAlertDalog(BuildContext context) {
    return AlertDialog(
      title: Text('Pembayaran Berhasil?'),
      content: Icon(
        Icons.check_circle,
        size: 150,
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'))
      ],
    );
  }
}
