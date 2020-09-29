import 'package:flutter/material.dart';
import 'package:global_news_app/Widgets/categories_list_item.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesListWidget extends StatefulWidget {
  @override
  _CategoriesListWidgetState createState() => _CategoriesListWidgetState();
}

class _CategoriesListWidgetState extends State<CategoriesListWidget>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        print("Tab is changed");
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              bottom: TabBar(
                controller: tabController,
                tabs: [
                  buildTabText("Bussines"),
                  buildTabText2("Tech"),
                  buildTabText2("World"),
                  buildTabText2("Sport"),
                  buildTabText2("Fashion"),
                ],
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.black,
                isScrollable: true,
              ),
            ),
          ),
          body: Container(
            height: 250,
            child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoriesListItem(
                          image:
                              "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                      CategoriesListItem(
                          image:
                              "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                      CategoriesListItem(
                          image:
                              "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80"),
                    ],
                  ),
                  CategoriesListItem(
                      image:
                          "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  CategoriesListItem(
                      image:
                          "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  CategoriesListItem(
                    image:
                        "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  ),
                  CategoriesListItem(
                      image:
                          "https://images.unsplash.com/photo-1504465039710-0f49c0a47eb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                ]),
          ),
        ),
      ),
    );
  }

  Padding buildTabText2(String str) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text("$str",
          style: GoogleFonts.teko(fontSize: 16, fontWeight: FontWeight.w500)),
    );
  }

  Padding buildTabText(String str) {
    return Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 5, top: 5, bottom: 5),
        child: Text("$str",
            style:
                GoogleFonts.teko(fontSize: 16, fontWeight: FontWeight.w500)));
  }
}
