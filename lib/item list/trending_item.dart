import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tasty_trend_sc/utils/utils.dart';

import '../models/recipe.dart';

class TrendingItem extends StatefulWidget {
  final Recipe recipe;

  const TrendingItem({super.key, required this.recipe});

  @override
  State<TrendingItem> createState() => _TrendingItemState();
}

class _TrendingItemState extends State<TrendingItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      widget.recipe.image,
                      height: 205,
                      width: 153,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Container(
                          child: Text(
                            widget.recipe.title,
                            style: titleTrending,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
