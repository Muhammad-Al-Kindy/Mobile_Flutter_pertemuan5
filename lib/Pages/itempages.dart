import 'package:flutter/material.dart';
import 'package:flutter_pertemuan5/item.dart';
import 'package:flutter_pertemuan5/Pages/Pembayaranpages.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Column(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
        Container(
          height: 400,
          alignment: Alignment.center,
          child: Image(image: AssetImage("assets/img/garam.jpg")),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 52, 228, 255),
                  border: Border(
                    right: BorderSide(
                        width: 4, color: Color.fromARGB(255, 248, 243, 243)),
                  )),
              alignment: Alignment.center,
              height: 40,
              width: 205.5,
              child: Text(
                'Harga',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 52, 228, 255),
              alignment: Alignment.center,
              height: 40,
              width: 205.5,
              child: Text(
                '3.000',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(children: [
          ElevatedButton(
            child: const Text('Kembali'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: const Text('Pembayaran'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuyPages()));
            },
          ),
        ]),
      ]))
    ]));
  }
}
