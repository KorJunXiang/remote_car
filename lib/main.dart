import 'package:flutter/material.dart';

void main() {
  runApp(const MyCar());
}

class MyCar extends StatefulWidget {
  const MyCar({Key? key}) : super(key: key);

  @override
  State<MyCar> createState() => _MyCarState();
}

class _MyCarState extends State<MyCar> {
  String operation = 'Go';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Remote Car"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(220, 60, 171, 207),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 350,
                color: Color.fromARGB(255, 208, 164, 31),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {
                            _press('Forward');
                          },
                          child:
                              Text('Forward', style: TextStyle(fontSize: 18))),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  _press('Left');
                                },
                                child: Text('Left',
                                    style: TextStyle(fontSize: 18))),
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  _press('Stop');
                                },
                                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 255, 0, 0)),
                                child: Text('Stop',
                                    style: TextStyle(fontSize: 18))),
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  _press('Right');
                                },
                                child: Text('Right',
                                    style: TextStyle(fontSize: 18))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {
                            _press('Reverse');
                          },
                          child:
                              Text('Reverse', style: TextStyle(fontSize: 18))),
                    ),
                  ],
                ),
              ),
              Text(operation,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }

  void _press(String s) {
    setState(() {
      operation = s;
    });
  }
}
