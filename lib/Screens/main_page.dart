import 'package:curved_drawer/curved_drawer.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:global_news_app/Widgets/categories_list_widget.dart';
import 'package:global_news_app/Widgets/comentator_list_widget.dart';
import 'package:global_news_app/Widgets/drawer_categories_item.dart';
import 'package:global_news_app/Widgets/general_news.dart';
import 'package:global_news_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: buildDrawer(),
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CategoriesListWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CommentatorListWidget(
                          colors: cardColor1,
                        ),
                        CommentatorListWidget(
                          colors: cardColor2,
                        ),
                        CommentatorListWidget(
                          colors: cardColor3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GeneralNews(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "GNews",
                          style: GoogleFonts.bangers(
                              color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    DrawerCategoriesItem(categoryName: "Global"),
                    DrawerCategoriesItem(categoryName: "Fashion"),
                    DrawerCategoriesItem(categoryName: "Sport"),
                    DrawerCategoriesItem(categoryName: "Bussiness"),
                    DrawerCategoriesItem(categoryName: "Health"),
                    DrawerCategoriesItem(categoryName: "Economics"),
                    DrawerCategoriesItem(categoryName: "Marketing"),
                    DrawerCategoriesItem(categoryName: "Tech"),
                    DrawerCategoriesItem(categoryName: "Female"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "GNews",
        style: GoogleFonts.bangers(color: Colors.black, fontSize: 18),
      ),
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
        icon: Icon(
          EvaIcons.menu2,
          color: Colors.black87,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            EvaIcons.search,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
