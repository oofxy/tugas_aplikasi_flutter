import 'package:flutter/material.dart';

class ModelCard{
  final String id;
  final String image;
  final String name;
  final String followers;
  final Color backgroundColor;
  bool isFavorite;

  ModelCard(this.image, this.name, this.followers, this.backgroundColor, this.id, {this.isFavorite = false});

}