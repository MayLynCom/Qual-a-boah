import 'package:flutter/material.dart';

class Party {
  final String? image, title, local, data, time;
  final int? price, id;
  final Color? color;
  Party({
    this.id,
    this.image,
    this.title,
    this.price,
    this.local,
    this.data,
    this.time,
    this.color,
  });
}

List<Party> partys = [
  Party(
    id: 1,
    title: "Distrito",
    price: 30,
    local: ' Arcos do Valongo',
    data: '  22 de Out',
    time: '  23:00',
    image: "assets/images/distrito.png",
    color: const Color(0xFF0d6758),
  ),

  Party(
      id: 2,
      title: "Tremendão",
      price: 30,
      local: ' R. Braz Cubas, 404',
      data: '  21 de Out',
      time: '  23:00',
      image: "assets/images/tremendao.png",
      color: const Color(0xFF00c4c5)),
  Party(
      id: 3,
      title: "Jota Music",
      price: 30,
      local: ' Arcos do Valongo',
      data: '  08 de Out',
      time: '  00:00',
      image: "assets/images/jota_music.png",
      color: const Color(0xFFf5a340)),
  Party(
      id: 4,
      title: "Baile da Favorita",
      price: 30,
      local: ' Arcos do Valongo ',
      data: '  24 de Set',
      time: '  22:00',
      image: "assets/images/baile_favorita.png",
      color: const Color(0xFFfe008e)),
  Party(
      id: 5,
      title: "Med Fantasia",
      price: 30,
      local: ' Arena Club Santos',
      data: '  11 de Out',
      time: '  22:00',
      image: "assets/images/med_fantasia.png",
      color: const Color(0xFFa7a7a7)),
  Party(
    id: 6,
    title: "Moby",
    price: 30,
    local: ' Av. Vicente de Carvalho, 30',
    data: '  09 de Set',
    time: '  22:00',
    image: "assets/images/moby.jpg",
    color: const Color(0xFF0079d8),
  ),
];

String dummyText = 'Local e Data';