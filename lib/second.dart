import 'package:flutter/material.dart';

class second extends StatefulWidget {
  second(
      {super.key,
      required this.imagepath,
      required this.price,
      required this.photographer,
      required this.title,
      required this.detail,
      required this.index});

  final String imagepath;

  final String price;

  final String photographer;

  final String title;

  final String detail;
  final int index;

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Hero(
          tag: 'logo${widget.index}',
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(widget.imagepath), fit: BoxFit.cover)),
          ),
        )),
        Container(
          height: 260,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'By${widget.photographer}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 164, 188, 199),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      widget.price,
                      style: const TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.detail,
                      style: const TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueAccent),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 15))),
                          child: Text('Back',
                              style:
                                  TextStyle(color: Colors.lightGreenAccent)))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueAccent),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 15))),
                          child: Text(
                            'Buy',
                            style: TextStyle(color: Colors.lightGreenAccent),
                          ))),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
