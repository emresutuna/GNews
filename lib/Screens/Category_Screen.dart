import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:global_news_app/Screens/News_Detail_Screen.dart';
import 'package:global_news_app/Widgets/drawer_categories_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class CategoryScreen extends StatefulWidget {
  final String title;
  CategoryScreen({Key key, @required this.title}) : super(key: key);
  @override
  _CategoryScreenState createState() => _CategoryScreenState(title);
}

class _CategoryScreenState extends State<CategoryScreen> {
  final String title;
  _CategoryScreenState(this.title);
  final _scaffoldKey2 = GlobalKey<ScaffoldState>();
  final List<String> images = [
    "https://images.unsplash.com/photo-1580039126722-282d758e1072?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80",
    "https://images.unsplash.com/photo-1582533568805-78a15dcb01b5?ixlib=rb-1.2.1&auto=format&fit=crop&w=758&q=80",
    "https://images.unsplash.com/photo-1587304656349-282bf9330885?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
    "https://images.unsplash.com/photo-1595059854048-5762c544c0f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1571388821745-6773b68201df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1513625047154-f390b1b0df20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1565650874758-f7f3019b0570?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
  ];
  final List<String> titles = [
    "Son dakika transfer haberi: Fenerbahçe'den Murat Sağlam Çaykur Rizespor ile anlaşmaya vardı!",
    "SON DAKİKA! 5 Ekim Altın fiyatları yükseliyor! Çeyrek altın, gram altın fiyatları canlı 2020",
    "GATA Başhekim Yardımcısı Ali Edizer'den tepki çeken sözler",
    "MasterChef'te elenen isim belli oldu (Olaylı eleme gecesi)",
    "Son dakika haberi! Ayşe Karaman'ın ölümünde karar! Uzman doktora 3 yıl 4 ay hapis",
    "Son dakika haberi: İnanılmaz görüntüler... Keçisini kurtarmak istersen bataklığa saplandı",
    "Son dakika... DSÖ, Türkiye Covid-19 raporunu yayımladı"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey2,
      appBar: buildAppBar(),
      //drawer: buildDrawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return buildCategoryRow(context, index);
          },
          staggeredTileBuilder: (int index) {
            return StaggeredTile.count(1, index.isEven ? 1.0 : 1.5);
          },
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
      ),
    );
  }

  InkWell buildCategoryRow(BuildContext context, int index) {
    return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewsDetailScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                        Colors.black38,
                        Colors.black38,
                        Colors.black38,
                      ]),
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FadeInImage.memoryNetwork(
                        fit: BoxFit.cover,
                        placeholder: kTransparentImage,
                        image: images[index]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black45,
                              Colors.black45,
                              Colors.black45,
                              Colors.black45,
                              Colors.black38,
                              Colors.black38,
                              Colors.black38,
                            ]),
                        borderRadius: BorderRadius.circular(12)),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              titles[index],
                              style: GoogleFonts.arvo(
                                  color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  timeAgo(DateTime.parse(
                                          "2020-10-05T09:24:00Z"))
                                      .toString()
                                      .replaceAll("hours ago", "saat önce"),
                                  style: GoogleFonts.arvo(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
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
        "$title",
        style: GoogleFonts.teko(color: Colors.black, fontSize: 22,fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          EvaIcons.arrowBack,
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
                    DrawerCategoriesItem(
                      categoryName: "Global",
                      isSelected: title == "Global" ? true : false,
                    ),
                    DrawerCategoriesItem(
                        categoryName: "Fashion",
                        isSelected: title == "Fashion" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Sport",
                        isSelected: title == "Sport" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Bussiness",
                        isSelected: title == "Bussiness" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Health",
                        isSelected: title == "Health" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Economics",
                        isSelected: title == "Economics" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Marketing",
                        isSelected: title == "Marketing" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Tech",
                        isSelected: title == "Tech" ? true : false),
                    DrawerCategoriesItem(
                        categoryName: "Female",
                        isSelected: title == "Female" ? true : false),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String timeAgo(DateTime date) {
    return timeago.format(date, allowFromNow: true, locale: 'tr');
  }
}
