import 'package:flutter/material.dart';
import 'package:wmsgo/services/services.dart';

class Picking extends StatefulWidget {
  const Picking({super.key});

  @override
  State<Picking> createState() => _PickingState();
}

class _PickingState extends State<Picking> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData().then((result) => {
          setState(() {
            data = result;
            print(data);
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Color(0xFF00FFF0),
        ),
        title: const Text(
          'Picking',
          style: TextStyle(color: Color(0XFF00FFF0)),
        ),
      ),
      body: data.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          //: ListView.separated(
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFFFFFFF)),
                    child: Row(children: [
                      Expanded(
                        child: Text(data[index]["sequencia"].toString()),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 30.0,
                          )
                        ],
                      ),
                    ]),
                  ),
                  onTap: () => print(data[index]['id'].toString()),
                );
              },
            ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  final String texto;

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Basic Dialog'),
          content: const Text('Texto completo loren ipsu '),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Enable'),
            )
          ],
        );
      });
}
