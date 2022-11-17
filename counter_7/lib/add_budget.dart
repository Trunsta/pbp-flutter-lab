import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/budget_data.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key});

  @override
  State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String judul = "";
  int nominal = 0;
  List<String> tipeBudget = ["Pemasukan", "Pengeluaran"];
  String pilihanTipe = "";
  List<String> dataBudget = [];

  bool isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Budget'),
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
                      builder: (context) => DataBudgetPage(dataBudget: dataBudget)),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Judul Budget',
                      labelText: 'Judul',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat judul diketik
                    onChanged: (String? value) {
                      setState(() {
                        judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    }),
              ),
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Nominal Budget",
                    labelText: "Nominal",
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nominal diketik
                  onChanged: (String? value) {
                    setState(() {
                      nominal = isNumeric(value!) ? int.parse(value) : 0;
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      nominal = isNumeric(value!) ? int.parse(value) : 0;
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty || !(isNumeric(value))) {
                      return 'Nominal budget tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 150,
                    child: Column(
                      children: [
                        DropdownButtonFormField(
                          value: pilihanTipe != "" ? pilihanTipe : null,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: tipeBudget.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              pilihanTipe = newValue!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty || value == "") {
                              return 'Pilih tipe budget!';
                            }
                            return null;
                          },
                          hint: Text(
                            "Pilih Jenis",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: Container(
                                  child: ListView(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Center(
                                          child: const Text(
                                              'Budget anda telah disimpan')),
                                      SizedBox(height: 20),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Kembali'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          var budget = "${judul} ${nominal} ${pilihanTipe}";
                          dataBudget.add(budget);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
