import 'package:flutter/material.dart';

class ReturnBook extends StatefulWidget {
  const ReturnBook({super.key});

  @override
  State<ReturnBook> createState() => _ReturnBookState();
}

class _ReturnBookState extends State<ReturnBook> {
  //listtile
  List<String> arrRollno = [
    '200955106190',
    '200955106191',
    '200955106192',
    '200955106193',
    '200955106194',
    '200955106195',
    '200955106196',
    '200955106197',
    '200955106198',
    '200955106199',
    '200955106200',
    '200955106201'
  ];
  List<String> arrName = [
    'Raman',
    'Ramnaujan',
    'Rajesh',
    'James',
    'Rahim',
    'Ram',
    'Raman',
    'Ramnaujan',
    'Rajesh',
    'James',
    'Rahim',
    'Ram'
  ];
  List<String> presentArray = [];

  void countPresentStudent() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Return Book
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.teal[500],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              width: double.infinity,
              child: Column(children: [
                const Text(
                  'Return Book',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(parent: null),
                      itemCount: arrRollno.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (() {
                            setState(() {
                              if (presentArray
                                  .contains(arrRollno[index].toString())) {
                                presentArray
                                    .remove(arrRollno[index].toString());
                              } else {
                                presentArray.add(arrRollno[index].toString());
                              }
                            });
                            countPresentStudent();
                          }),
                          child: Card(
                            color: Colors.teal[700],
                            elevation: 5,
                            shadowColor: presentArray
                                    .contains(arrRollno[index].toString())
                                ? Colors.green
                                : Colors.red,
                            child: ListTile(
                              leading: InkWell(
                                onTap: (() {
                                  // go to student Profile...
                                }),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/images/img60.png"),
                                ),
                              ),
                              title: Text(
                                arrRollno[index],
                                style: const TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              textColor: Colors.white,
                              subtitle: Text(arrName[index]),
                              trailing: Container(
                                height: 40,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: presentArray.contains(
                                            arrRollno[index].toString())
                                        ? Colors.green
                                        : Colors.red),
                                child: Center(
                                  child: Text(presentArray
                                          .contains(arrRollno[index].toString())
                                      ? 'Issue'
                                      : 'Return'),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          // old Record
          Container(
            width: double.infinity,
            height: mediaQuery.size.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.teal[500],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(children: [
              const Text(
                'Old Record',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(parent: null),
                    itemCount: arrRollno.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (() {}),
                        child: Card(
                          color: Colors.teal[900],
                          elevation: 5,
                          child: ListTile(
                            leading: InkWell(
                              onTap: (() {
                                // go to student Profile...
                              }),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50,
                                backgroundImage:
                                    AssetImage("assets/images/img60.png"),
                              ),
                            ),
                            title: Text(
                              arrRollno[index],
                              style: const TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            textColor: Colors.white,
                            subtitle: Text(arrName[index]),
                            trailing: InkWell(
                              onTap: (() {}),
                              child: const Icon(
                                Icons.info,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
