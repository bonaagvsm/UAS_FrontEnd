import 'package:flutter/material.dart';
import 'package:flutter_applicationnn/folder/pembayaran.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metode Pembayaran"),
        backgroundColor: Colors.blue[600],
        elevation: 0,
        toolbarHeight: 59,
        actions: [
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          width: 350,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                child: ListTile(
                  onTap: () {},
                  title: Text('BCA'),
                  leading: Container(
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/2560px-Bank_Central_Asia.svg.png"),
                    height: 50,
                    width: 50,
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ListPembayaran(),
                                  ));
                            },
                            child: Text('Pilih'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                child: ListTile(
                  onTap: () {},
                  title: Text('BNI'),
                  leading: Container(
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/1280px-BNI_logo.svg.png"),
                    height: 50,
                    width: 50,
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ListPembayaran(),
                                  ));
                            },
                            child: Text('Pilih'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                child: ListTile(
                  onTap: () {},
                  title: Text('BRI'),
                  leading: Container(
                    child: Image.network(
                        "https://buatlogoonline.com/wp-content/uploads/2022/10/Logo-Bank-BRI.png"),
                    height: 50,
                    width: 50,
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ListPembayaran(),
                                  ));
                            },
                            child: Text('Pilih'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                child: ListTile(
                  onTap: () {},
                  title: Text('Mandiri'),
                  leading: Container(
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/BANK_BRI_logo.svg/1280px-BANK_BRI_logo.svg.png"),
                    height: 50,
                    width: 50,
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListPembayaran()));
                            },
                            child: Text('Pilih'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "No Bank",
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
