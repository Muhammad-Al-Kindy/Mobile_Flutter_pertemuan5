import 'package:flutter/material.dart';

class BuyPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Column(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
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
