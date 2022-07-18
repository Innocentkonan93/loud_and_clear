import 'dart:convert';

import 'package:equatable/equatable.dart';

class FeedModel extends Equatable {
  final String title;
  final String description;
  final DateTime date;
  final String location;
  final List<String> imageUrl;
  final String groupe;

  const FeedModel({
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.imageUrl,
    required this.groupe,
  });

  FeedModel copyWith({
    String? title,
    String? description,
    DateTime? date,
    String? location,
    List<String>? imageUrl,
    String? groupe,
  }) {
    return FeedModel(
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      location: location ?? this.location,
      imageUrl: imageUrl ?? this.imageUrl,
      groupe: groupe ?? this.groupe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date.millisecondsSinceEpoch,
      'location': location,
      'image_url': imageUrl,
      'groupe': groupe,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      location: map['location'] ?? '',
      imageUrl: map['image_url'] ?? '',
      groupe: map['groupe'] ?? '',
    );
  }

  @override
  List<Object> get props {
    return [
      title,
      description,
      date,
      location,
      groupe,
    ];
  }
}

List<FeedModel> events = [
  FeedModel(
    title: "event high valued client oriented",
    description: "description",
    date: DateTime.now(),
    location: "Abidjan, Côte d’Ivoire",
    imageUrl: const [
      "actu1.png",
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "7.png",
    ],
    groupe: "1",
  ),
  FeedModel(
    title: "event high valued client oriented",
    description: "description",
    date: DateTime.now(),
    location: "Abidjan, Côte d’Ivoire",
    imageUrl: const [
      "actu2.png",
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "7.png",
    ],
    groupe: "1",
  ),
  FeedModel(
    title: "event high valued client oriented",
    description: "description",
    date: DateTime.now(),
    location: "Abidjan, Côte d’Ivoire",
    imageUrl: const [
      "actu3.png",
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "7.png",
    ],
    groupe: "1",
  ),
];
