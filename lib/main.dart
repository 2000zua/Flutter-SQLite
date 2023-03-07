import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late String nome, descricao;
  late double preco;

  void getName(String name) {
    nome = name;
    print(nome);
  }

  void getDescription(String description) {
    descricao = description;
    print(descricao);
  }

  void getProce(String price) {
    try {
      preco = double.parse(price);
    } catch (Execption) {
      print('digite um preco valido');
    }

    print(preco);
  }

  void deleteData() {}

  void updateData() {}

  void readData() {}

  void createData() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FLutter and SQLite'),
          backgroundColor: const Color.fromARGB(255, 20, 50, 68),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(hintText: "Name"),
                onChanged: (String name) {
                  getName(name);
                },
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Descricao"),
                onChanged: (String description) {
                  getDescription(description);
                },
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Price"),
                keyboardType: TextInputType.number,
                onChanged: (String price) {
                  getProce(price);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,),
                    onPressed: () {
                      createData();
                    },
                    child: const Text("Create"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 50, 70, 189)),
                    onPressed: () {
                      readData();
                    },
                    child: const Text("Read"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 224, 116, 15)),
                    onPressed: () {
                      updateData();
                    },
                    child: const Text("Update"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 230, 7, 7)),
                    onPressed: () {
                      deleteData();
                    },
                    child: const Text("Delete"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
