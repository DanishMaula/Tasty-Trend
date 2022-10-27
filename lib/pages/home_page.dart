import 'package:flutter/material.dart';
import 'package:tasty_trend_sc/item_list/trending_item.dart';
import 'package:tasty_trend_sc/utils/utils.dart';

import '../models/recipe.dart';
import '../item_list/recipe_item.dart';
import 'detail_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang, Danish',
                            style: welcomeText,
                          ),
                          Text(
                            'Mau masak apa hari ini?',
                            style: welcomeSubText,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Search Bar
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffE2DFDF)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text('Trending', style: styleTitle),

                  const SizedBox(height: 10),

                  Container(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final Recipe recipe = recipeList[index];
                        return InkWell(
                          onTap: () {
                           
                          },
                          child: TrendingItem(recipe: recipe),
                        );
                      },
                      itemCount: recipeList.length,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text('Rekomendasi', style: styleTitle),

                  // List untuk makanan
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final Recipe recipe = recipeList[index];
                        return InkWell(
                          onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DetailScreen(recipe: recipe);
                      
                            }));
                          },
                          child: RecipeItem(recipe: recipe),
                        );
                      },
                      itemCount: recipeList.length,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}


