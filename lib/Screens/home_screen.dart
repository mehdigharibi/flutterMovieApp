// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttermovieapp/Widgets/custom_tumbnail.dart';
import 'package:fluttermovieapp/models/movie.dart';
import 'package:fluttermovieapp/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<MovieModel> foryouItemsList = List.of(forYouImages);
  PageController pagecontroller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi Mehdi !',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/avatar.png'),
                                    fit: BoxFit.cover),
                              )),
                          Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kButtonColor,
                                ),
                                height: 10,
                                width: 10,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: kSearchbarColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.white30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Search',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white30))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Text(
                    "For you",
                    style: TextStyle(
                        color: Colors.white30,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                foryouCardsLayer(forYouImages),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget foryouCardsLayer(List<MovieModel> movieList) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.47,
      child: PageView.builder(
        controller: pagecontroller,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return CustomCardTumbnail(
              imageAsset: movieList[index].imageAsset.toString());
        },
        onPageChanged: (int page) {
          currentpage = page;
        },
      ),
    );
  }
}
