
import 'package:buiseness_vyapaari/model/gallerymodel.dart';
import 'package:flutter/material.dart';

class Gallerywidget extends StatefulWidget {
  Gallerywidget({super.key, required this.gallery});
  Gallery gallery;

  @override
  State<Gallerywidget> createState() => _GallerywidgetState();
}

class _GallerywidgetState extends State<Gallerywidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 40,
        height: 40,
        child: Image.asset(
    "${widget.gallery.IMG}",
    fit: BoxFit.cover,
        ),
      );
  }
}
