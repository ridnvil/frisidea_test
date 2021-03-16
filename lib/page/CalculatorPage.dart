import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController bilAwal = new TextEditingController();
  TextEditingController bilAkhir = new TextEditingController();
  List<int> listPrima;

  cekPrima(int n) {
    for (int i = 2; i < n; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: bilAwal,
                      decoration: InputDecoration(
                        hintText: "Angka Awal"
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: bilAkhir,
                      decoration: InputDecoration(
                          hintText: "Angka Akhir"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          MaterialButton(
            child: Text("Calculate"),
            onPressed: () {
              List<int> data = [];
              int awal = int.parse(bilAwal.text);
              int akhir = int.parse(bilAkhir.text);

              for (int i = awal; i < akhir; i++) {
                if(cekPrima(i)) {
                  data.add(i);
                }
              }

              setState(() {
                listPrima = data;
              });
            },
          ),
          SizedBox(height: 20,),
          listPrima == null ? Text(""):Text("$listPrima"),
          // ListView.separated(
          //   itemCount: listGanjil == null ? 0: listGanjil.length,
          //   separatorBuilder: (BuildContext context, int index) {
          //     return Card(
          //       child: Text("List Angka Ganjil = ${index}"),
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}
