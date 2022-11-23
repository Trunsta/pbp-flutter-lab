import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/add_budget.dart';
import 'package:counter_7/page/my_watchlist_page.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key, this.dataBudget});

  final List<String>? dataBudget;

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    List<String> judul = [];
    List<String> nominal = [];
    List<String> tipe = [];

    if (widget.dataBudget != null) {
      for (var i = 0; i < widget.dataBudget!.length; i++) {
        final hasil = widget.dataBudget![i].split(" ");
        judul.add(hasil[0]);
        nominal.add(hasil[1]);
        tipe.add(hasil[2]);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Watchlist'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            if (widget.dataBudget != null) ...[
              for (var i = 0; i < widget.dataBudget!.length; i++) ...[
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      new Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              judul[i],
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      )),
                      new Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(nominal[i]),
                            Text(tipe[i]),
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ]
            ]
          ],
        ),
      ),
    );
  }
}
