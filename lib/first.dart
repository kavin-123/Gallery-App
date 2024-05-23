// ignore_for_file: camel_case_types

import 'dart:core';

import 'package:ex1/second.dart';
import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List<Imagedetail> image = [
    Imagedetail(
        imagepath: 'lib/images/IMG_20240204_135720(1).jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_133826.jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
    Imagedetail(
        imagepath: 'lib/images/IMG_20240224_135720(1).jpg',
        price: '100',
        photographer: 'Akash',
        title: 'The Avengers',
        detail: 'lorpism'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 244, 255),
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Gallery',
            style: TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 169, 191, 194),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: GridView.builder(
              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => second(
                                  index: index,
                                  imagepath: image[index].imagepath,
                                  price: image[index].price,
                                  photographer: image[index].photographer,
                                  title: image[index].title,
                                  detail: image[index].detail,
                                ))));
                  },
                  child: Hero(
                    tag: 'logo$index',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(image[index].imagepath),
                              fit: BoxFit.cover)),
                    ),
                  ),
                );
              },
              itemCount: image.length),
        ))
      ])),
    );
  }
}

class Imagedetail {
  final String imagepath;
  final String price;
  final String photographer;
  final String title;
  final String detail;

  Imagedetail({
    required this.imagepath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.detail,
  });
}
