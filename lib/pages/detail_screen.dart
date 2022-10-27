import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasty_trend_sc/utils/utils.dart';

import '../models/recipe.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailScreen({super.key, required this.recipe});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  widget.recipe.image,
                  fit: BoxFit.cover,
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                ),
                //create back button
                Positioned(
                  top: 30,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffDB7D0F),
              height: 50,
              child: Center(child: Text(widget.recipe.title,
              style: titleDetail,)),
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.recipe.desc, style: descDetail),
                const SizedBox(height: 20),
                Text('Bahan-bahan', style: titleBahanBahan,),
                const SizedBox(height: 20),
                Text(widget.recipe.bahanBahan, style: descDetail),
              ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
