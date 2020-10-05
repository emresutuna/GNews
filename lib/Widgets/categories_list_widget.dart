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
                              "https://i.sozcu.com.tr/wp-content/uploads/2020/09/29/iecrop/bursa-kadin-cinayeti-foto-iha_16_9_1601388990-670x371.jpg"
                              ,text: "Esini sokak ortasında vurdu, silahı tutukluk yapınca yakalandı",
                              ),
                      CategoriesListItem(
                          image:
                              "https://im.haberturk.com/2020/09/29/ver1601387696/2818939_1200x627.jpg",
                              text: "Son dakika! Azerbaycan-Ermenistan cephe hattında son durum!",
                              ),
                      CategoriesListItem(
                          image:
                              "https://iasbh.tmgrup.com.tr/556893/650/344/0/20/724/401?u=https://isbh.tmgrup.com.tr/sbh/2020/09/29/son-dakika-gelismesi-altin-fiyatlari-hareketlendi-29-eylul-sali-cumhuriyet-tam-yarim-gram-ve-ceyrek-altin-fiyatlari-ne-kadar-oldu-1601386960932.jpg",text: "Altın fiyatları hareketlendi! 29 Eylül Salı cumhuriyet, tam, yarım, gram ve çeyrek… ",),
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
